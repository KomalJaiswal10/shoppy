import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shoppy/controller/product_controller.dart';
import 'package:shoppy/model/product_model.dart';
import 'package:shoppy/service/constant/colors.dart';
import 'package:shoppy/service/utils/extensions.dart';
import 'package:shoppy/service/utils/getx_instance.dart';
import 'package:shoppy/view/widgets/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController().getProducts();
    return Scaffold(
      backgroundColor: AppColors.secondaryWhite.withOpacity(.4),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        child: Column(
          children: [
            topAppBar(),
            20.heigth,
            search(context),
            20.heigth,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Products').normalBold(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sort,
                      color: AppColors.primaryBlue,
                    ))
              ],
            ),
            20.heigth,
            FutureBuilder(
                future: GetxInstance.productController.getProducts(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    List<ProductModel> products =
                        GetxInstance.productController.productsList;
                    return Flexible(
                      child: GridView.builder(
                        itemCount: products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Two columns
                          mainAxisSpacing: 10.0, // Spacing between items
                          crossAxisSpacing: 5.0, // Spacing between columns
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color:
                                          AppColors.primaryBlue.withOpacity(.6),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CachedNetworkImage(
                                    imageUrl: products[index].image ?? '',
                                    fit: BoxFit.fill, // Or other fit options
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                })
          ],
        ),
      ),
    );
  }

  Container search(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.hint, width: 0.3),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: AppColors.hint,
          ),
          10.width,
          const Flexible(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: AppColors.hint),
                  hintText: 'Search Products....'),
            ),
          )
        ],
      ),
    );
  }

  Row topAppBar() {
    return Row(
      children: [
        const Icon(
          Icons.account_circle,
          color: AppColors.hint,
          size: 35,
        ),
        10.width,
        CustomText(
                text: 'Good Afternoon, User', color: AppColors.secondaryBlack)
            .normalBold(),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: AppColors.primaryBlue,
            ))
      ],
    );
  }
}
