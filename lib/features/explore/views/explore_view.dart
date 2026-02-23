import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/app_text_form_field.dart';
import 'package:green_mart/features/explore/data/dummy_data.dart';
import 'package:green_mart/features/explore/widgets/explore_item.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Find Products', style: AppTextStyles.subtitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              AppTextFormField(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Store',
              ),
              GridView.builder(
                itemCount: exploreCategories.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 180,
                ),
                itemBuilder: (context, index) {
                  return ExploreItem(
                    exploreCategoryModel: exploreCategories[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
