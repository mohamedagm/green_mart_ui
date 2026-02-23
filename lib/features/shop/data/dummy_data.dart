import 'package:flutter/material.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

List<ProductModel> offersList = [
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '1',
    image:
        'https://cdn.mafrservices.com/sys-master-root/h3a/h84/12832633487390/32566_main.jpg',
    name: 'Bananas',
    quantityForPrice: "7pcs",
    price: 4.99,
    description: 'not used here',
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '2',
    image:
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTNmnE7KBkZdxFQT0CrFGEOQ1rcqsyZ_y_e2_XSnd33qBdAVqjn',
    name: 'Red Apple',
    quantityForPrice: "1kg",
    price: 3.99,
    description: 'not used here',
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '3',
    image:
        'https://cdn.mafrservices.com/sys-master-root/h49/h90/9342419238942/287355_main.jpg',
    name: 'Bell Pepper Red',
    quantityForPrice: "1kg",
    price: 3.0,
    description: 'not used here',
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '4',
    image:
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRi9EDJaccY9Hz1Y7qfI-R5JqWYSnyranEi4DiVB35WWbf93Hk3',
    name: 'Ginger',
    quantityForPrice: "250gm",
    price: 2.99,
    description: 'not used here',
  ),
];

List<ProductModel> bestSellingList = [
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '1b',
    image:
        'https://cdn.mafrservices.com/sys-master-root/h49/h90/9342419238942/287355_main.jpg',
    name: 'Bell Pepper Red',
    quantityForPrice: "1kg",
    price: 3.0,
    description: 'not used here',
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '2b',
    image:
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRi9EDJaccY9Hz1Y7qfI-R5JqWYSnyranEi4DiVB35WWbf93Hk3',
    name: 'Ginger',
    quantityForPrice: "250gm",
    price: 2.99,
    description: 'not used here',
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '3b',
    image:
        'https://cdn.mafrservices.com/sys-master-root/h3a/h84/12832633487390/32566_main.jpg',
    name: 'Bananas',
    quantityForPrice: "7pcs",
    price: 4.99,
    description: 'not used here',
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '4b',
    image:
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTNmnE7KBkZdxFQT0CrFGEOQ1rcqsyZ_y_e2_XSnd33qBdAVqjn',
    name: 'Red Apple',
    quantityForPrice: "1kg",
    price: 3.99,
    description: 'not used here',
  ),
];

List<ProductModel> allProductsList = [
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '1C',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8vq9elNmD7LbX2VrziesRldY0jqXB54hLvA&s',
    name: 'Orange',
    quantityForPrice: "500gm",
    price: 1.99,
    description:
        "Oranges are nutritious. Oranges may be good for vitamin C. Oranges may be good for your heart. As part of a healthful and varied diet.",
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '2C',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFT-bteAg0wbO0yBMfyM8fLq0vG5At3wwLtQ&s',
    name: 'Mango',
    quantityForPrice: "1kg",
    price: 6.99,
    description:
        "Mangoes are nutritious. Mangoes may be good for skin. Mangoes may be good for your heart. As part of a healthful and varied diet.",
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '3C',
    image:
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRi9EDJaccY9Hz1Y7qfI-R5JqWYSnyranEi4DiVB35WWbf93Hk3',
    name: 'Ginger',
    quantityForPrice: "250gm",
    price: 2.99,
    description:
        "Ginger is nutritious. Ginger may be good for digestion. Ginger may be good for your heart. As part of a healthful and varied diet.",
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '4C',
    image:
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTNmnE7KBkZdxFQT0CrFGEOQ1rcqsyZ_y_e2_XSnd33qBdAVqjn',
    name: 'Red Apple',
    quantityForPrice: "1kg",
    price: 3.99,
    description:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '5C',
    image:
        'https://cdn.mafrservices.com/sys-master-root/h49/h90/9342419238942/287355_main.jpg',
    name: 'Bell Pepper Red',
    quantityForPrice: "1kg",
    price: 3.0,
    description:
        "Peppers are nutritious. Peppers may be good for immunity. Peppers may be good for your heart. As part of a healthful and varied diet.",
  ),
  ProductModel(
    taqId: UniqueKey().toString(),
    id: '6C',
    image:
        'https://cdn.mafrservices.com/sys-master-root/h3a/h84/12832633487390/32566_main.jpg',
    name: 'Bananas',
    quantityForPrice: "7pcs",
    price: 4.99,
    description:
        "Bananas are nutritious. Bananas may be good for energy boost. Bananas may be good for your heart. As part of a healthful and varied diet.",
  ),
];
