class SuraInQuran {
  int code;
  String status;
  Data data;
  SuraInQuran({
    required this.code,
    required this.status,
    required this.data,
  });

  factory SuraInQuran.fromJson(Map<String, dynamic> json) => SuraInQuran(
    code: json["code"],
    status: json["status"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "status": status,
    "data": data.toJson(),
  };
}

class Data {
  int? number;
  String name;
  String englishName;
  String englishNameTranslation;
  String revelationType;
  int numberOfAyahs;
  List<Ayah> ayahs;

  Data({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    required this.numberOfAyahs,
    required this.ayahs,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    number: json["number"] as int?,
    name: json["name"] ?? '', // Provide a default value if null
    englishName: json["englishName"] ?? '', // Provide a default value if null
    englishNameTranslation: json["englishNameTranslation"] ?? '', // Provide a default value if null
    revelationType: json["revelationType"] ?? '', // Provide a default value if null
    numberOfAyahs: json["numberOfAyahs"] as int? ?? 0, // Provide a default value if null
    ayahs: List<Ayah>.from(json["ayahs"].map((x) => Ayah.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "name": name,
    "englishName": englishName,
    "englishNameTranslation": englishNameTranslation,
    "revelationType": revelationType,
    "numberOfAyahs": numberOfAyahs,
    "ayahs": List<dynamic>.from(ayahs.map((x) => x.toJson())),
  };
}

class Ayah {
  int number;
  String text;
  int numberInSurah;
  int juz;
  int manzil;
  int page;
  int ruku;
  int hizbQuarter;
  bool sajda;

  Ayah({
    required this.number,
    required this.text,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
    required this.sajda,
  });

  factory Ayah.fromJson(Map<String, dynamic> json) => Ayah(
    number: json["number"],
    text: json["text"],
    numberInSurah: json["numberInSurah"],
    juz: json["juz"],
    manzil: json["manzil"],
    page: json["page"],
    ruku: json["ruku"],
    hizbQuarter: json["hizbQuarter"],
    sajda: json["sajda"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "text": text,
    "numberInSurah": numberInSurah,
    "juz": juz,
    "manzil": manzil,
    "page": page,
    "ruku": ruku,
    "hizbQuarter": hizbQuarter,
    "sajda": sajda,
  };
}
