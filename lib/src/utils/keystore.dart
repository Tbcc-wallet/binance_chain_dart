class Keystore {
  int? version;
  String? id;
  Crypto? crypto;

  Keystore({this.version, this.id, this.crypto});

  Keystore.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    id = json['id'];
    crypto = json['crypto'] != null ? Crypto.fromJson(json['crypto']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['version'] = version;
    data['id'] = id;
    if (crypto != null) {
      data['crypto'] = crypto!.toJson();
    }
    return data;
  }
}

class Crypto {
  String? ciphertext;
  Cipherparams? cipherparams;
  String? cipher;
  String? kdf;
  Kdfparams? kdfparams;
  String? mac;

  Crypto({this.ciphertext, this.cipherparams, this.cipher, this.kdf, this.kdfparams, this.mac});

  Crypto.fromJson(Map<String, dynamic> json) {
    ciphertext = json['ciphertext'];
    cipherparams = json['cipherparams'] != null ? Cipherparams.fromJson(json['cipherparams']) : null;
    cipher = json['cipher'];
    kdf = json['kdf'];
    kdfparams = json['kdfparams'] != null ? Kdfparams.fromJson(json['kdfparams']) : null;
    mac = json['mac'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['ciphertext'] = ciphertext;
    if (cipherparams != null) {
      data['cipherparams'] = cipherparams!.toJson();
    }
    data['cipher'] = cipher;
    data['kdf'] = kdf;
    if (kdfparams != null) {
      data['kdfparams'] = kdfparams!.toJson();
    }
    data['mac'] = mac;
    return data;
  }
}

class Cipherparams {
  String? iv;

  Cipherparams({this.iv});

  Cipherparams.fromJson(Map<String, dynamic> json) {
    iv = json['iv'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['iv'] = iv;
    return data;
  }
}

class Kdfparams {
  int? dklen;
  String? salt;
  int? c;
  String? prf;

  Kdfparams({this.dklen, this.salt, this.c, this.prf});

  Kdfparams.fromJson(Map<String, dynamic> json) {
    dklen = json['dklen'];
    salt = json['salt'];
    c = json['c'];
    prf = json['prf'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['dklen'] = dklen;
    data['salt'] = salt;
    data['c'] = c;
    data['prf'] = prf;
    return data;
  }
}
