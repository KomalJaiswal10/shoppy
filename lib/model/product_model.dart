class ProductModel {
  late int? id;
  late String? title;
  late num? price;
  late String? desc;
  late String? category;
  late String? image;
  late Map? rating;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.desc,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> data) {
    return ProductModel(
      id: data['id'],
      title: data['title'],
      price: data['price'],
      desc: data['description'],
      category: data['category'],
      image: data['image'],
      rating: data['rating'],
    );
  }
}
