import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/widgets/app_text_form_field.dart';
import 'package:green_mart/features/shop/data/dummy_data.dart';
import 'package:green_mart/features/shop/widgets/item_card.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  String query = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            popFrom(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 12),

          child: Hero(
            tag: 'search',
            child: Material(
              color: Colors.transparent,
              child: AppTextFormField(
                onChanged: (value) {
                  setState(() {
                    query = value;
                  });
                },
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Store',
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 26,
          left: 16,
          right: 16,
          bottom: 10,
        ),
        child: GridView.builder(
          itemCount: getproductsBySearchQuery(query).length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            mainAxisExtent: 250,
          ),
          itemBuilder: (context, index) =>
              ItemCard(productModel: getproductsBySearchQuery(query)[index]),
        ),
      ),
    );
  }
}
