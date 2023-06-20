class Teams {
  String? abbreviation;
  String? fullName;

  Teams({this.abbreviation, this.fullName});

  Teams.fromJson(Map<String, dynamic> json) {
    abbreviation = json['abbreviation'];
    fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['abbreviation'] = this.abbreviation;
    data['full_name'] = this.fullName;
    return data;
  }
}
