class RecentActivitiesModel {
  String? symbolName;
  String? symbolAmount;
  int? symbolDate;
  String? symbolId;

  RecentActivitiesModel({
    this.symbolName,
    this.symbolAmount,
    this.symbolDate,
    this.symbolId,
  });

  RecentActivitiesModel.fromJson(Map<String, dynamic> json) {
    symbolName = json['symbolName'];
    symbolAmount = json['symbolAmount'];
    symbolDate = json['symbolDate'];
    symbolId = json['symbolId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['symbolName'] = symbolName;
    data['symbolAmount'] = symbolAmount;
    data['symbolDate'] = symbolDate;
    data['symbolId'] = symbolId;
    return data;
  }
}
