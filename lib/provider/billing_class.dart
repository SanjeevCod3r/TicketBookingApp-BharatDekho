class billing{
  String amt;
  int checkoutAmount;
  String qty;
  String title;
  String id;
  String date;
  String to_mail;
  String to_name;
  String cost;
  billing({
    required this.amt,
    required this.checkoutAmount,
    required this.qty,
    required this.title,
    required this.to_name,
    required this.to_mail,
    required this.id,
    required this.date,
    required this.cost,
  });
}