import 'package:flutter/material.dart';
import 'package:green_mart/features/cart/data/cart_model.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

List<CartItemModel> mockCartItems = [
  CartItemModel(
    productModel: ProductModel(
      taqId: UniqueKey().toString(),
      description: 'not used here 1',
      id: 'd1',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfDeaMF3DGM6S4lWuPut2CMfBVLtNuPwBtxQ&s',
      name: 'Diet Coke',
      quantityForPrice: '355ml',
      price: 1.99,
    ),
  ),
  CartItemModel(
    productModel: ProductModel(
      taqId: UniqueKey().toString(),
      description: 'not used here 2',
      id: 'd2',
      image:
          'https://136957708.cdn6.editmysite.com/uploads/1/3/6/9/136957708/2ZKMWNHDYK7YTK47HHJTVHDI.jpeg',
      name: 'Sprite Can',
      quantityForPrice: '325ml',
      price: 1.50,
    ),
  ),
  CartItemModel(
    productModel: ProductModel(
      taqId: UniqueKey().toString(),
      description: 'not used here 3',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2gK95hKJCIHkiDALFRdN7eJ2WQ3o4f6keoQ&s',
      id: 'd3',
      name: 'Apple & Grape Juice',
      quantityForPrice: '2L',
      price: 15.99,
    ),
  ),

  //
  CartItemModel(
    productModel: ProductModel(
      taqId: UniqueKey().toString(),
      description: 'not used here 4',
      id: 'd4',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnI0hDYtoQ81Jib0V7D1Pq1QHrTjLnx15smQ&s',
      name: 'Orange Juice',
      quantityForPrice: '2L',
      price: 15.99,
    ),
  ),
  CartItemModel(
    productModel: ProductModel(
      taqId: UniqueKey().toString(),
      description: 'not used here 5',
      id: 'd5',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK-1dJEjfUnixIeXMoZffrEa08XsRsoDDLww&s',
      name: 'Coca Cola Can',
      quantityForPrice: '325ml',
      price: 4.99,
    ),
  ),
  CartItemModel(
    productModel: ProductModel(
      taqId: UniqueKey().toString(),
      description: 'not used here 6',
      id: 'd6',
      image:
          'https://image-cdn.ubuy.com/pepsi-cola-soda-pop-16-fl-oz-bottle/400_400_100/661b74ec3d82f96eca5ac01d.jpg',
      name: 'Pepsi Can',
      quantityForPrice: '330ml',
      price: 4.99,
    ),
  ),
];
