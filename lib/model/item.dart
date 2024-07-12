class Item {
  String name;
  String title;
  String image;
  int rank;
  List<String> details;
  double rating;
  int review;
  List<String> tags;

  Item(
      {required this.name,
      required this.title,
      required this.image,
      required this.rank,
      required this.details,
      required this.rating,
      required this.review,
      required this.tags});
}
