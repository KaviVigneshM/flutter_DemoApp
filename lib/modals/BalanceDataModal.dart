class BalanceDataModal {
  final String title;
  final String amount;
  final String validity;
  final String icon;

  BalanceDataModal(
      {required this.title,
      required this.amount,
      required this.icon,
      required this.validity});

  static BalanceDataModal fromJson(json) => BalanceDataModal(
        title: json['title'],
        amount: json['amount'],
        icon: json['icon'],
        validity: json['validity'],
      );
}
