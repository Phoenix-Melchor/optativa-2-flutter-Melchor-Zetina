class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String image;
  final int stock;  // Ahora sólo almacenamos una imagen

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.stock
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    // Extraemos la primera imagen de la lista, o proporcionamos una URL de imagen por defecto si la lista está vacía.
    String image = (json['images'] as List<dynamic>).isNotEmpty 
        ? json['images'][0] as String 
        : '';

    return Product(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      image: image,
      stock: json['stock'] as int,
    );
  }
}
