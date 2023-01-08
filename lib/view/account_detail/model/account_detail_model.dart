class AccountDetailsModel {
  String? accountNumber;
  String? remainingDebt;
  String? cutOffDate;
  String? balanceAmount;
  String? id;

  AccountDetailsModel(
      {this.accountNumber,
      this.remainingDebt,
      this.cutOffDate,
      this.balanceAmount,
      this.id});

  AccountDetailsModel.fromJson(Map<String, dynamic> json) {
    accountNumber = json['accountNumber'];
    remainingDebt = json['remainingDebt'];
    cutOffDate = json['cutOffDate'];
    balanceAmount = json['balanceAmount'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accountNumber'] = accountNumber;
    data['remainingDebt'] = remainingDebt;
    data['cutOffDate'] = cutOffDate;
    data['balanceAmount'] = balanceAmount;
    data['id'] = id;
    return data;
  }
}
