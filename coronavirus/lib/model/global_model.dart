import 'dart:convert';

GlobalModel globalModelFromJson(String str) => GlobalModel.fromJson(json.decode(str));

String globalModelToJson(GlobalModel data) => json.encode(data.toJson());

class GlobalModel {
  GlobalModel({
    this.id,
    this.message,
    this.global,
    this.countries,
    this.date,
  });

  String id;
  String message;
  Global global;
  List<Country> countries;
  DateTime date;

  factory GlobalModel.fromJson(Map<String, dynamic> json) => GlobalModel(
    id: json["ID"],
    message: json["Message"],
    global: Global.fromJson(json["Global"]),
    countries: List<Country>.from(json["Countries"].map((x) => Country.fromJson(x))),
    date: DateTime.parse(json["Date"]),
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "Message": message,
    "Global": global.toJson(),
    "Countries": List<dynamic>.from(countries.map((x) => x.toJson())),
    "Date": date.toIso8601String(),
  };
}

class Country {
  Country({
    this.id,
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
    this.premium,
  });

  String id;
  String country;
  String countryCode;
  String slug;
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;
  DateTime date;
  Premium premium;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    id: json["ID"],
    country: json["Country"],
    countryCode: json["CountryCode"],
    slug: json["Slug"],
    newConfirmed: json["NewConfirmed"],
    totalConfirmed: json["TotalConfirmed"],
    newDeaths: json["NewDeaths"],
    totalDeaths: json["TotalDeaths"],
    newRecovered: json["NewRecovered"],
    totalRecovered: json["TotalRecovered"],
    date: DateTime.parse(json["Date"]),
    premium: Premium.fromJson(json["Premium"]),
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "Country": country,
    "CountryCode": countryCode,
    "Slug": slug,
    "NewConfirmed": newConfirmed,
    "TotalConfirmed": totalConfirmed,
    "NewDeaths": newDeaths,
    "TotalDeaths": totalDeaths,
    "NewRecovered": newRecovered,
    "TotalRecovered": totalRecovered,
    "Date": date.toIso8601String(),
    "Premium": premium.toJson(),
  };
}

class Premium {
  Premium();

  factory Premium.fromJson(Map<String, dynamic> json) => Premium(
  );

  Map<String, dynamic> toJson() => {
  };
}

class Global {
  Global({
    this.id,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
  });

  String id;
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;

  factory Global.fromJson(Map<String, dynamic> json) => Global(
    id: json["ID"],
    newConfirmed: json["NewConfirmed"],
    totalConfirmed: json["TotalConfirmed"],
    newDeaths: json["NewDeaths"],
    totalDeaths: json["TotalDeaths"],
    newRecovered: json["NewRecovered"],
    totalRecovered: json["TotalRecovered"],
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "NewConfirmed": newConfirmed,
    "TotalConfirmed": totalConfirmed,
    "NewDeaths": newDeaths,
    "TotalDeaths": totalDeaths,
    "NewRecovered": newRecovered,
    "TotalRecovered": totalRecovered,
  };
}
