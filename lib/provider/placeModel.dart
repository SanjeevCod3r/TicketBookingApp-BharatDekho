
class Place{
  final title;
  final state;
  final city;
  final imageUrl;
  final logoUrl;
  final description;
  final timings;
  final icitz;
  final istud;
  final fcitz;
  final fstud;
  final locality;
  final rating;
  final bgcolor;

  Place({
    required this.title,
    required this.state,
    required this.bgcolor,
    required this.rating,
    required this.city,
    required this.imageUrl,
    required this.description,
    required this.timings,
    required this.icitz,
    required this.locality,
    this.istud=Null,
    required this.fcitz,
    this.fstud = Null,
    required this.logoUrl
  });

}
