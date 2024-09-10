// import 'package:clean_arc/core/utils_package/utils_package.dart';
// import 'package:clean_arc/features/auth_feature/view/Cart/Cart_view.dart';
// import 'package:clean_arc/features/detiels_product/detiels_product_view.dart';
// import 'package:clean_arc/features/home_feature/presentation/view/componant.dart';
// import 'package:flutter/material.dart';

// @RoutePage()
// class TobemarkterView extends StatefulWidget {
//   const TobemarkterView({super.key});

//   static const path = '/TobemarkterView';

//   @override
//   State<TobemarkterView> createState() => _TobemarkterViewState();
// }

// class _TobemarkterViewState extends State<TobemarkterView> {
//   bool isFavorite = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: context.color.whiteColor,
//       appBar: _buildAppBar(),
//       body: Row(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: _buildProductsGrid(),
//             ),
//           ),
//           _buildCategoriesColumn(),
//         ],
//       ),
//     );
//   }

//   AppBar _buildAppBar() {
//     return AppBar(
//       actions: [
//         IconButton(
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => CartView()));
//           },
//           icon: AppImages.images.core.svg.shoppingCart.svg(),
//           color: Colors.black,
//         ),
//         IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.notification_important_rounded, size: 30),
//         ),
//       ],
//       title: const Text(
//         "التصنيفات",
//         style: TextStyle(color: Colors.black),
//       ),
//     );
//   }

//   Widget _buildCategoriesColumn() {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             _buildCategoryItem(AppImages.images.core.svg.beuty.svg(), 'نقالات'),
//             _buildCategoryItem(
//                 AppImages.images.core.svg.clothes.svg(), 'الملابس'),
//             _buildCategoryItem(
//                 AppImages.images.core.svg.mobile.svg(), 'نقالات'),
//             _buildCategoryItem(AppImages.images.core.svg.gift.svg(), 'الهدايا'),
//             _buildCategoryItem(
//                 AppImages.images.core.svg.mobile.svg(), 'نقالات'),
//             _buildCategoryItem(
//                 AppImages.images.core.svg.beuty.svg(), 'صحة وتجميل'),
//             _buildCategoryItem(AppImages.images.core.svg.gift.svg(), 'الهدايا'),
//             _buildCategoryItem(
//                 AppImages.images.core.svg.mobile.svg(), 'نقالات'),
//             _buildCategoryItem(
//                 AppImages.images.core.svg.beuty.svg(), 'صحة وتجميل'),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildProductsGrid() {
//     return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 2 / 3,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//       ),
//       itemCount: 8,
//       itemBuilder: (BuildContext context, int index) {
//         return GestureDetector(
//           onTap: () {
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) => DetielsProductView(
//                   title: 'Laptop $index',
//                   imageUrl: AppImages.images.core.svg.lapTop.path,
//                   oldPrice: '120.00',
//                   newPrice: '80.00',
//                   rating: 4,
//                   discount: '25%',
//                   isFavorite: false,
//                 ),
//               ),
//             );
//           },
//           child: ProductCard(
//             isFavorite: true,
//             imageUrl: AppImages.images.core.svg.lapTop.path,
//             isAssetImage: true,
//             title: 'Laptop',
//             oldPrice: '120.00',
//             newPrice: '80.00',
//             rating: 4,
//             discount: '25%',
//             onFavoriteToggle: () {
//               setState(() {
//                 isFavorite = !isFavorite;
//               });
//             },
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildCategoryItem(Widget icon, String label) {
//     return Column(
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.greenAccent.withOpacity(.1),
//           radius: 30,
//           child: icon,
//         ),
//         const SizedBox(height: 8),
//         Text(label, style: const TextStyle(fontSize: 12)),
//       ],
//     );
//   }
// }

import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/view/Cart/Cart_view.dart';
import 'package:clean_arc/features/detiels_product/detiels_product_view.dart';
import 'package:clean_arc/features/home_feature/presentation/view/componant.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TobemarkterView extends StatefulWidget {
  const TobemarkterView({super.key});

  static const path = '/TobemarkterView';

  @override
  State<TobemarkterView> createState() => _TobemarkterViewState();
}

class _TobemarkterViewState extends State<TobemarkterView> {
  bool isFavorite = false;

  String selectedCategory = 'All'; // Default value

  final Map<String, List<Map<String, String>>> productsByCategory = {
    'All': [
      {'title': 'Laptop', 'oldPrice': '120.00', 'newPrice': '80.00'},
      {'title': 'Phone', 'oldPrice': '100.00', 'newPrice': '70.00'},
      {'title': 'Headset', 'oldPrice': '50.00', 'newPrice': '35.00'},
      {'title': 'Laptop', 'oldPrice': '120.00', 'newPrice': '80.00'},
      {'title': 'Phone', 'oldPrice': '100.00', 'newPrice': '70.00'},
      {'title': 'Headset', 'oldPrice': '50.00', 'newPrice': '35.00'},
    ],
    'نقالات': [
      {'title': 'Phone', 'oldPrice': '100.00', 'newPrice': '70.00'},
      {'title': 'Smartphone', 'oldPrice': '300.00', 'newPrice': '250.00'},
    ],
    'الملابس': [
      {'title': 'T-shirt', 'oldPrice': '20.00', 'newPrice': '15.00'},
      {'title': 'Jacket', 'oldPrice': '60.00', 'newPrice': '45.00'},
    ],
    'الهدايا': [
      {'title': 'paper', 'oldPrice': '20.00', 'newPrice': '15.00'},
      {'title': 'lightflower', 'oldPrice': '60.00', 'newPrice': '45.00'},
    ],
    'صحة وتنمية': [
      {'title': 'T-shirt', 'oldPrice': '20.00', 'newPrice': '15.00'},
      {'title': 'Jacket', 'oldPrice': '60.00', 'newPrice': '45.00'},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      appBar: _buildAppBar(),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildProductsGrid(),
            ),
          ),
          _buildCategoriesColumn(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartView()));
          },
          icon: AppImages.images.core.svg.shoppingCart.svg(),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notification_important_rounded, size: 30),
        ),
      ],
      title: const Text(
        "التصنيفات",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildCategoriesColumn() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildCategoryItem(AppImages.images.core.svg.beuty.svg(), 'نقالات'),
            _buildCategoryItem(
                AppImages.images.core.svg.clothes.svg(), 'الملابس'),
            _buildCategoryItem(
                AppImages.images.core.svg.gift.svg(), 'صحة وتنمية'),
            _buildCategoryItem(AppImages.images.core.svg.beuty.svg(), 'نقالات'),
            _buildCategoryItem(
                AppImages.images.core.svg.clothes.svg(), 'الملابس'),
            _buildCategoryItem(AppImages.images.core.svg.gift.svg(), 'الهدايا'),
            _buildCategoryItem(
                AppImages.images.core.svg.clothes.svg(), 'الملابس'),
            _buildCategoryItem(AppImages.images.core.svg.gift.svg(), 'نقالات'),
          ],
        ),
      ),
    );
  }

  Widget _buildProductsGrid() {
    final List<Map<String, String>> products =
        productsByCategory[selectedCategory] ?? [];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        final product = products[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetielsProductView(
                  title: product['title'] ?? 'Product',
                  imageUrl: AppImages.images.core.svg.lapTop.path,
                  oldPrice: product['oldPrice'] ?? '0.00',
                  newPrice: product['newPrice'] ?? '0.00',
                  rating: 4,
                  discount: '25%',
                  isFavorite: false,
                ),
              ),
            );
          },
          child: ProductCard(
            isFavorite: true,
            imageUrl: AppImages.images.core.svg.lapTop.path,
            isAssetImage: true,
            title: product['title'] ?? 'Product',
            oldPrice: product['oldPrice'] ?? '0.00',
            newPrice: product['newPrice'] ?? '0.00',
            rating: 4,
            discount: '25%',
            onFavoriteToggle: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        );
      },
    );
  }

  Widget _buildCategoryItem(Widget icon, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = label;
        });
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.greenAccent.withOpacity(.1),
            radius: 30,
            child: icon,
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
