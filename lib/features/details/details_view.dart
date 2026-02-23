import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/app_button.dart';
import 'package:green_mart/features/details/product_quantity.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class DetailsView extends StatefulWidget {
  final ProductModel productModel;

  const DetailsView({super.key, required this.productModel});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2F3F2),
        elevation: 0,
        leading: IconButton(
          onPressed: () => popFrom(context),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ios_share, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF2F3F2),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Hero(
                tag: widget.productModel.taqId,
                child: Image.network(
                  widget.productModel.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      widget.productModel.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        widget.productModel.quantityForPrice.toString(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  ProductQuantityAndPrice(
                    productModel: widget.productModel,
                    count: count,
                    onDecrement: () {
                      if (count > 1) setState(() => count--);
                    },
                    onIncrement: () {
                      setState(() => count++);
                    },
                  ),
                  SizedBox(height: 12),
                  const Divider(height: 40),

                  _buildExpandableSection(
                    "Product Detail",
                    widget.productModel.description,
                  ),

                  const Divider(height: 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Nutritions",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              "100gr",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: const Icon(
                              Icons.keyboard_arrow_right,
                              size: 26,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Divider(height: 40),

                  Row(
                    children: [
                      const Text(
                        "Review",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemPadding: EdgeInsets.all(0),
                        direction: Axis.horizontal,
                        itemSize: 30,
                        itemBuilder: (context, index) =>
                            Icon(Icons.star, color: Color(0xFFF3603F)),
                        onRatingUpdate: (double value) {},
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: IconButton(
                          style: IconButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {},
                          icon: Icon(
                            color: Colors.black,
                            Icons.keyboard_arrow_right,
                            size: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: AppButton(
          onPressed: () {},
          text: 'Add To Cart',
          height: 65,
          width: double.infinity,
          bgColor: AppColors.primaryColor,
          textStyle: AppTextStyles.subtitle.copyWith(
            color: AppColors.backgroundColor,
          ),
        ),
      ),
    );
  }

  Widget _buildExpandableSection(String title, String description) {
    return ExpansionTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      tilePadding: EdgeInsets.zero,
      trailing: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.black,
        size: 26,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(
            description,
            style: const TextStyle(color: Colors.grey, height: 1.5),
          ),
        ),
      ],
    );
  }
}
