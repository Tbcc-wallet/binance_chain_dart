import 'dart:typed_data';
import 'dart:math' as math;

extension DoublePower on double {
  double pow(int power) {
    return math.pow(this, power);
  }
}

extension IntPower on int {
  int pow(int power) {
    return math.pow(this, power);
  }
}

/// Encode a BigInt into bytes using big-endian encoding.
Uint8List encodeBigInt(BigInt number) {
  var _byteMask = BigInt.from(0xff);
  var size = (number.bitLength + 7) >> 3;

  var result = Uint8List(size);
  for (var i = 0; i < size; i++) {
    result[size - i - 1] = (number & _byteMask).toInt();
    number = number >> 8;
  }

  return result;
}

Uint8List varint_encode(int number) {
  var buf = <int>[];
  var towrite;
  while (true) {
    towrite = number & 0x7f;
    number >>= 7;
    if (number != 0) {
      buf.add((towrite | 0x80));
    } else {
      buf.add(towrite);
      break;
    }
  }
  return Uint8List.fromList(buf);
}

Uint8List convertbits(Uint8List data, int frombits, int tobits, [pad = true]) {
  /// General power-of-2 base conversion.

  var acc = 0;
  var bits = 0;
  var result = <int>[];
  var maxv = (1 << tobits) - 1;
  var max_acc = (1 << (frombits + tobits - 1)) - 1;
  for (var value in data) {
    if (value < 0 || (value >> frombits) >= 1) {
      return null;
    }
    acc = ((acc << frombits) | value) & max_acc;
    bits += frombits;
    while (bits >= tobits) {
      bits -= tobits;
      result.add((acc >> bits) & maxv);
    }
  }
  if (pad) {
    if (bits != 0) {
      result.add((acc << (tobits - bits)) & maxv);
    }
  } else if (bits >= frombits || ((acc << (tobits - bits)) & maxv) >= 1) {
    return null;
  }
  return Uint8List.fromList(result);
}
