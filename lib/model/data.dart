import 'package:ecommerce/model/product.dart';

import 'category.dart';

class AppData {
  static List<Product> productList = [
    Product(
        id: 1,
        name: 'SevenUp 12oz',
        price: 240.00,
        isSelected: false,
        isliked: false,
        image: 'asset/refrescos/7up-12oz.jpg',
        category: "Refrescos"),
    Product(
        id: 2,
        name: 'Pepsi 12oz',
        price: 240.00,
        isliked: false,
        image: 'asset/refrescos/pepsi-12oz.jpg',
        category: "Refrescos"),
  ];
  
static List<Product> searchProductList = [
    Product(
        id: 1,
        name: 'SevenUp 12oz',
        image: 'asset/refrescos/7up-12oz.jpg',
        category: "Refrescos"),
    Product(
        id: 2,
        name: 'Pepsi 12oz',
        image: 'asset/refrescos/pepsi-12oz.jpg',
        category: "Refrescos"),
        Product(
        id: 3,
        name: 'RedRock 450ml',
        image: 'asset/image-not-found.png',
        category: "Refrescos"),
  ];
  static List<Product> cartList = [
    Product(
        id: 1,
        name: 'Red Rock 450ml',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'asset/image-not-found.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'Seven up 12oz',
        price: 190.00,
        isliked: false,
        image: 'asset/image-not-found.png',
        category: "Trending Now"),
    Product(
        id: 1,
        name: 'Pepsi 450ml',
        price: 220.00,
        isliked: false,
        image: 'asset/image-not-found.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'Ron Barcelo',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'asset/image-not-found.png',
        category: "Trending Now"),
    // Product(
    //     id:1,
    //     name: 'Nike Air Max 97',
    //     price: 190.00,
    //     isliked: false,
    //     image: 'assets/small_tilt_shoe_2.png',
    //     category: "Trending Now"),
  ];
  static List<Category> categoryList = [
    Category(),
    Category(
        id: 1,
        name: "Cervezas", /*image: 'asset/shoe_thumb_2.png'*/isSelected: true),
    Category(id: 2, name: "Refrescos", /*image: 'asset/pepsi_thumb.jpg'*/),
    Category(id: 3, name: "Ron", /*image: 'asset/watch.png'*/),
    Category(id: 4, name: "Energizantes", /*image: 'asset/watch.png'*/),
    Category(id: 4, name: "Vinos", /*image: 'asset/watch.png'*/),
  ];
  
  static List<String> showThumbnailList = [
    "asset/shoe_thumb_5.png",
    "asset/shoe_thumb_1.png",
    "asset/shoe_thumb_4.png",
    "asset/shoe_thumb_3.png",
  ];
  static String description =
      "Es una marca estadounidense de refresco sin cafeína con sabor a lima-limón. Los derechos de la marca pertenecen a Keurig Dr Pepper en los Estados Unidos y a 7 Up International en el resto del mundo.";
}
