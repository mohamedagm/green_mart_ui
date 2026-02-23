import 'package:flutter/material.dart';

class ExploreCategoryModel {
  final String id;
  final String title;
  final String imagePath;
  final Color bgColor;
  final Color borderColor;
  final Widget destination;

  ExploreCategoryModel({
    required this.id,
    required this.title,
    required this.imagePath,
    required this.bgColor,
    required this.borderColor,
    required this.destination,
  });
}