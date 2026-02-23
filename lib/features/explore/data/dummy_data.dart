import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/features/explore/data/explore_caregory_model.dart';
import 'package:green_mart/features/explore/views/fruits_view.dart';

List<ExploreCategoryModel> exploreCategories = [
  ExploreCategoryModel(
    id: 'c1',
    title: 'Fresh Fruits & Vegetable',
    imagePath: AppAssets.fruitsVegetable,
    bgColor: Color(0xffEEF7F1),
    borderColor: Color(0xff53B175),
    destination: FruitsView(),
  ),
  ExploreCategoryModel(
    id: 'c2',
    title: 'Cooking Oil & Ghee',
    imagePath: AppAssets.cookingOil,
    bgColor: Color(0xffFDF3E7),
    borderColor: Color(0xffF8A44C),
    destination: FruitsView(),
  ),
  ExploreCategoryModel(
    id: 'c3',
    title: 'Meat & Fish',
    imagePath: AppAssets.meatAndFish,
    bgColor: Color(0xffFDE8E4),
    borderColor: Color(0xffF7A593),
    destination: FruitsView(),
  ),
  ExploreCategoryModel(
    id: 'c4',
    title: 'Bakery & Snacks',
    imagePath: AppAssets.bakery,
    bgColor: Color(0xffF4EBF7),
    borderColor: Color(0xffD3B0E0),
    destination: FruitsView(),
  ),
  ExploreCategoryModel(
    id: 'c5',
    title: 'Dairy & Eggs',
    imagePath: AppAssets.dairyEggs,
    bgColor: Color(0xffFFF8E1),
    borderColor: Color(0xffFDE598),
    destination: FruitsView(),
  ),
  ExploreCategoryModel(
    id: 'c6',
    title: 'Beverages',
    imagePath: AppAssets.beverages,
    bgColor: Color(0xffE6F2FF),
    borderColor: Color(0xffB7DFF5),
    destination: FruitsView(),
  ),
  ExploreCategoryModel(
    destination: FruitsView(),
    id: 'c7',
    title: 'Frozen Foods',
    imagePath: AppAssets.frozenFoods,
    bgColor: Color(0xffEAF4FF),
    borderColor: Color(0xff6FA8DC),
  ),
  ExploreCategoryModel(
    destination: FruitsView(),
    id: 'c8',
    title: 'Breakfast',
    imagePath: AppAssets.breakfast,
    bgColor: Color(0xffF3F3F3),
    borderColor: Color(0xffBDBDBD),
  ),
];
