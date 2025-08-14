class Product {
  final String image;
  final String name;
  final String desc;
  final double price;
  final double starcont; // Use double for rating
  final int reviews;
  final int id;

  Product({
    required this.image,
    required this.name,
    required this.desc,
    required this.price,
    required this.starcont,
    required this.reviews,
    required this.id,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      image: json['image'] as String,
      name: json['title'] as String, // 'title' instead of 'name'
      desc: json['description'] as String, // 'description' instead of 'desc'
      price: (json['price'] as num).toDouble(),
      starcont: (json['rating']['rate'] as num).toDouble(), // nested rating
      reviews: json['rating']['count'] as int, // nested rating
      id: json['id'] as int, // Assuming 'id' is an integer
    );
  }
}
