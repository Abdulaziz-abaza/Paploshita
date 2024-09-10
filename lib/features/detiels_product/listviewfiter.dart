import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/features/detiels_product/detaielsComponant.dart';
import 'package:clean_arc/features/home_feature/presentation/view/componant.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: List.generate(
          2,
          (index) => Container(
            width: double.infinity,
            child: DetielsProductCard(
              categoryicon: Image.asset(
                AppImages.images.core.svg.icon3.path,
                width: 11.5,
                height: 11.5,
                fit: BoxFit.fill,
              ),
              categoryttitle: 'حقائب',
              isFavorite: true,
              imageUrl: AppImages.images.core.svg.phoneRate.path,
              isAssetImage: true,
              storetitle: 'Product Title',
              oldPrice: '120.00',
              newPrice: '80.00',
              rating: 5,
              discount: '23%',
              onFavoriteToggle: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class ProductSortListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return ProductCard(
              isFavorite: true,
              imageUrl: AppImages.images.core.svg.phoneRate.path,
              isAssetImage: true,
              title: 'Product Title',
              oldPrice: '120.00',
              newPrice: '80.00',
              rating: 5,
              discount: '25%',
              onFavoriteToggle: () {},
            );
          },
        )
        // Column(
        //   children: List.generate(
        //     5,
        //     (index) => Container(
        //       width: 150,
        //       child: ProductCard(
        //         isFavorite: true,
        //         imageUrl: AppImages.images.core.svg.phoneRate.path,
        //         isAssetImage: true,
        //         title: 'Product Title',
        //         oldPrice: '120.00',
        //         newPrice: '80.00',
        //         rating: 5,
        //         discount: '25%',
        //         onFavoriteToggle: () {},
        //       ),
        //     ),
        //   ),
        // ),
        );
  }
}

void showSortOptions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: Text(
                      'ترتيب',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.close, color: Colors.black),
                ],
              ),
              const SizedBox(height: 16),
              ListTile(
                title: Text('ترتيب حسب الظهور'),
                trailing: Icon(Icons.check, color: Colors.red),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('ترتيب حسب معدل التقييم'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('ترتيب حسب الاحدث'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('ترتيب حسب: الاقل سعراً للأعلى'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('ترتيب حسب: الاعلى سعراً للأدنى'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
