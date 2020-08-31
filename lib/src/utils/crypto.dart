import 'dart:typed_data';
import 'package:pointycastle/digests/ripemd160.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:convert/convert.dart';

import './num_utils.dart';

String CHARSET = 'qpzry9x8gf2tvdw0s3jn54khce6mua7l';

int bech32_polymod(List values) {
  ///Internal function that computes the Bech32 checksum.

  final generator = [0x3b6a57b2, 0x26508e6d, 0x1ea119fa, 0x3d4233dd, 0x2a1462b3];

  var chk = 1;
  int top;
  for (int value in values) {
    top = chk >> 25;
    chk = (chk & 0x1ffffff) << 5 ^ value;
    for (var i in [0, 1, 2, 3, 4]) {
      chk ^= ((top >> i) & 1) >= 1 ? generator[i] : 0;
    }
  }
  return chk;
}

Uint8List bech32_hrp_expand(String hrp) {
  /// Expand the HRP into values for checksum computation.

  var result = <int>[];
  result += List<int>.generate(hrp.length, (i) => hrp.codeUnitAt(i) >> 5);
  result += [0];
  result += List<int>.generate(hrp.length, (i) => hrp.codeUnitAt(i) & 31);

  return Uint8List.fromList(result);
}

Uint8List bech32_create_checksum(String hrp, Uint8List data) {
  ///Compute the checksum values given HRP and data.

  var values = bech32_hrp_expand(hrp) + data;

  var polymod = bech32_polymod(values + [0, 0, 0, 0, 0, 0]) ^ 1;

  var result = List<int>.generate(6, (i) => (polymod >> 5 * (5 - i)) & 31);

  return Uint8List.fromList(result);
}

bool bech32_verify_checksum(hrp, data) {
  //Verify a checksum given HRP and converted data characters.

  return bech32_polymod(bech32_hrp_expand(hrp) + data) == 1;
}

String bech32_encode(String hrp, Uint8List data) {
  /// Compute a Bech32 string given HRP and data values.

  var combined = data + bech32_create_checksum(hrp, data);

  return hrp + '1' + List<String>.generate(combined.length, (i) => CHARSET[combined[i]]).join('');
}

List bech32_decode(String bech) {
  /// Validate a Bech32 string, and determine HRP and data.

  //validation
  if ((<bool>[for (var x in bech.codeUnits) (x < 33 && x > 126)].firstWhere(
            (element) => element,
            orElse: () => null,
          ) !=
          null) ||
      ((bech.toLowerCase() != bech && bech.toUpperCase() != bech))) {
    return [null, null];
  }
  bech = bech.toLowerCase();
  var pos = bech.lastIndexOf('1');
  if (pos < 1 || pos + 7 > bech.length || bech.length > 90) {
    return [null, null];
  }
  if (<bool>[for (var x in List<int>.generate(bech.substring(pos + 1).length, (index) => index + pos + 1)) CHARSET.contains(bech[x])].firstWhere((element) => element == false, orElse: () => null) != null) {
    return [null, null];
  }

  var hrp = bech.substring(0, pos);
  var data = List<int>.generate(bech.substring(pos + 1).length, (index) => CHARSET.indexOf(bech[index + pos + 1]));

  if (!bech32_verify_checksum(hrp, data)) {
    return [null, null];
  }

  return [hrp, data.sublist(0, data.length - 6)];
}

Uint8List decode_address(String address) {
  var components = bech32_decode(address);
  if (components[0] == null) {
    return null;
  }

  var bits = convertbits(Uint8List.fromList(components[1]), 5, 8, false);
  return bits;
}

String encode(String hrp, Uint8List witprog) {
  /// Encode a segwit address.

  return bech32_encode(hrp, convertbits(witprog, 8, 5));
}

dynamic getAddressFromPublicKey(String publicKey, [hrp = 'tbnb']) {
  final s = SHA256Digest().process(hex.decode(publicKey));
  final r = RIPEMD160Digest().process(s);

  return encode(hrp, r);
}
