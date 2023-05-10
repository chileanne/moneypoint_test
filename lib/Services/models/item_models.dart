

import 'dart:convert';

Items itemsfromJson(String response) {
 return Items.fromJson(jsonDecode(response));
}



class Items {
  final List<Tshirt>? tshirt;

  Items({
    this.tshirt,
  });

  Items.fromJson(Map<String, dynamic> json)
      : tshirt = (json['Tshirt'] as List?)?.map((dynamic e) => Tshirt.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'Tshirt' : tshirt?.map((e) => e.toJson()).toList()
  };
}

class Tshirt {
  final String? id;
  final String? name;
  final String? price;
  final String? ratings;
  final String? brand;
  final String? category;
  final String? noSold;
  final String? review;
  final String? xratings;
  final String? image;

  Tshirt({
    this.id,
    this.name,
    this.price,
    this.ratings,
    this.brand,
    this.category,
    this.noSold,
    this.review,
    this.xratings,
    this.image,
  });

  Tshirt.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['Name'] as String?,
        price = json['Price'] as String?,
        ratings = json['ratings'] as String?,
        brand = json['Brand'] as String?,
        category = json['Category'] as String?,
        noSold = json['No_sold'] as String?,
        review = json['review'] as String?,
        xratings = json['Ratings'] as String?,
        image = json['image'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'Name' : name,
    'Price' : price,
    'ratings' : ratings,
    'Brand' : brand,
    'Category' : category,
    'No_sold' : noSold,
    'review' : review,
    'Ratings' : ratings,
    'image' : image
  };
}