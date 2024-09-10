import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/detiels_product/detaielsComponant.dart';
import 'package:clean_arc/features/detiels_product/detiels_product_view.dart';
import 'package:clean_arc/features/detiels_product/listviewfiter.dart';
import 'package:clean_arc/features/home_feature/presentation/view/componant.dart';
import 'package:clean_arc/features/menu/componant.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String newPrice;
  final String oldPrice;
  final String discount;
  final int rating;

  const ProductDetailsScreen({
    required this.imageUrl,
    required this.title,
    required this.newPrice,
    required this.oldPrice,
    required this.discount,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomFloatingActionButton(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 70,
        leading: IconButton(
          icon: AppImages.images.core.svg.transfer.svg(
            width: 20,
            height: 18,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Transform.translate(
          offset: Offset(-40, 0),
          child: AppImages.images.core.logos.ppp.image(
            width: 50,
            height: 90,
          ),
        ),
        actions: [
          Stack(
            children: <Widget>[
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.notifications_outlined,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: (AppImages.images.core.svg.shoppingCart.svg(
                      width: 25,
                      height: 25,
                    )),
                    onPressed: () {},
                  ),
                ],
              ),
              Positioned(
                right: 5,
                top: 2,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 20,
                    minHeight: 20,
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ],
                      ),
                      child: TextField(
                        onChanged: (value) {},
                        onSubmitted: (value) {},
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          hintText: '    بحث',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: (AppImages.images.core.svg.iconFeatherShare2.svg(
                          width: 25,
                          height: 25,
                        )),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'حقائب',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 8),
                      AppImages.images.core.svg.handbag.svg(
                        width: 11,
                        height: 11,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RatingWidget(
                          initialRating: 5, onRatingChanged: (value) {}),
                      SizedBox(width: 8),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        imageUrl,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: List.generate(
                      4,
                      (index) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(index.isEven
                                  ? AppImages.images.core.svg.lapTop.path
                                  : AppImages.images.core.svg.lapTop.path),
                              width: 50,
                              height: 70,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  CustomProductWidget(
                    availability: 'متوفر',
                    discount: '25%',
                    inquiryText: 'استعلام',
                    newPrice: '2500',
                    oldPrice: '3000',
                    rating: 5,
                    storeName: 'فاملي ستور',
                    quantity: 10,
                  ),
                  SizedBox(height: 16),
                  QuantitySelectorWidget(),
                  RatingBar(),
                  SizedBox(height: 16),
                  TextApp(
                      text:
                          'شكراً لاختياركبابلوشيتا! سيساعدك معالج الإعداد السريع هذا في تكوين الإعدادات الأساسية وسيكون لديك متجرك جاهزًا في أي وقت من الأوقات. إذا كنت لا ترغب في استعراض المعالج الآن ، فيمكنك التخطي والعودة إلى لوحة المعلومات. يمكنك إعداد متجرك من لوحة القيادة ›الإعداد في أي وقت!'),
                  CustomListTile(
                    leadingText: '',
                    onLeadingTap: () {},
                    onTitleTap: () {},
                    titleText: '',
                    trailingText: 'المواصفات',
                  ),
                  CustomListTile(
                    leadingText: '',
                    onLeadingTap: () {},
                    onTitleTap: () {},
                    titleText: '',
                    trailingText: 'سيايات المتجر',
                  ),
                  CustomListTile(
                    leadingText: '',
                    onLeadingTap: () {},
                    onTitleTap: () {},
                    titleText: '',
                    trailingText: 'استفسار',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          ' الكل',
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'المنتجات المشابهة',
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          child: ProductCard(
                            isFavorite: true,
                            imageUrl: AppImages.images.core.svg.phoneRate.path,
                            isAssetImage:
                                true, // Indicate that this is an asset image
                            title: 'Product Title',
                            oldPrice: '120.00',
                            newPrice: '80.00',
                            rating: 5,
                            discount: '25%', onFavoriteToggle: () {},
                          ),
                        ),
                        Container(
                          width: 150,
                          child: ProductCard(
                            isFavorite: true,
                            imageUrl: AppImages.images.core.svg.lapTop.path,
                            isAssetImage:
                                true, // Indicate that this is an asset image
                            title: ' Laptop ',
                            oldPrice: '120.00',
                            newPrice: '80.00',
                            rating: 4,
                            discount: '25%', onFavoriteToggle: () {},
                          ),
                        ),
                        Container(
                          width: 150,
                          child: ProductCard(
                            isFavorite: false,

                            imageUrl: AppImages.images.core.svg.lapTop.path,
                            isAssetImage:
                                true, // Indicate that this is an asset image
                            title: 'Product Title',
                            oldPrice: '120.00',
                            newPrice: '80.00',
                            rating: 3.5,
                            discount: '25%', onFavoriteToggle: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 205,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '$discount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuantitySelectorWidget extends StatefulWidget {
  @override
  _QuantitySelectorWidgetState createState() => _QuantitySelectorWidgetState();
}

class _QuantitySelectorWidgetState extends State<QuantitySelectorWidget> {
  int quantity = 1;

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Quantity selector
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: _decrementQuantity,
                    ),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        '$quantity',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: _incrementQuantity,
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(width: 20),
            // Add to cart button
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  // Handle add to cart logic here
                },
                child: Text(
                  'اضافه للسله',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ],
    );
  }
}

class CustomProductWidget extends StatelessWidget {
  final String oldPrice;
  final String newPrice;
  final String storeName;
  final String availability;
  final String inquiryText;
  final int quantity;
  final double rating;
  final String discount;

  const CustomProductWidget({
    required this.oldPrice,
    required this.newPrice,
    required this.storeName,
    required this.availability,
    required this.inquiryText,
    required this.quantity,
    required this.rating,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    '$quantity',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'عدد القطع',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              Text(
                oldPrice,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(
                ' ل د' + newPrice,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Store: $storeName',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 8),
              Icon(Icons.store, size: 14, color: Colors.grey),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RatingWidget(initialRating: 3, onRatingChanged: (rating) {}),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  // Directly call the showSortOptions function here
                  showSortOptions(context);
                },
                child: Text('ارسل استفسار ؟'),
              ),
            ],
          )

          //       Row(
          //         children: [
          //           TextButton(
          //               onPressed: () {
          //                 Navigator.of(context).push(
          //                   MaterialPageRoute(
          //                     builder: (context) =>
          // showSortOptions(context);

          //                   ),
          //                 );
          //               },
          //               child: Text('ارسل استفسار ؟')),
          //         ],
          //       ),
        ],
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  final int totalReviews = 250;
  final double averageRating = 3.0;
  final Map<int, int> ratingData = {
    5: 72,
    4: 34,
    3: 22,
    2: 11,
    1: 8,
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left Side: Average rating
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$averageRating",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("of 5"),
            SizedBox(height: 5),
            Text("($totalReviews Reviews)", style: TextStyle(fontSize: 14)),
          ],
        ),
        SizedBox(width: 30),

        // Right Side: Rating details (Bars and numbers)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ratingData.entries.map((entry) {
              int star = entry.key;
              int count = entry.value;
              double percentage = count / totalReviews;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    // Star and count
                    Row(
                      children: [
                        Text("$star"),
                        SizedBox(width: 5),
                        Icon(Icons.star, color: Colors.orange, size: 20),
                        SizedBox(width: 5),
                      ],
                    ),

                    // Progress Bar
                    SizedBox(width: 10),
                    Expanded(
                      child: LinearPercentIndicator(
                        lineHeight: 14.0,
                        percent: percentage,
                        backgroundColor: Colors.grey[300],
                        progressColor: Colors.orange,
                      ),
                    ),
                    Text("($count)"),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

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

// class ExplationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 60,
//       decoration: BoxDecoration(
//         color: Colors.green,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: const Center(
//         child: Text(
//           'Tap to open',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//           ),
//         ),
//       ),
//     );
//   }
// }

// void showSortOptions(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     builder: (BuildContext context) {
//       return SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(right: 150.0),
//                     child: Text(
//                       'ترتيب',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Icon(Icons.close, color: Colors.black),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               ListTile(
//                 title: Text('ترتيب حسب الظهور'),
//                 trailing: Icon(Icons.check, color: Colors.red),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               Divider(),
//               ListTile(
//                 title: Text('ترتيب حسب معدل التقييم'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               Divider(),
//               ListTile(
//                 title: Text('ترتيب حسب الاحدث'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               Divider(),
//               ListTile(
//                 title: Text('ترتيب حسب: الاقل سعراً للأعلى'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               Divider(),
//               ListTile(
//                 title: Text('ترتيب حسب: الاعلى سعراً للأدنى'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
void showSortOptions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Allows the bottom sheet to be scrollable
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Title and Close Button
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'ارسال استفسار',
              //       style: TextStyle(
              //         fontSize: 18,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     IconButton(
              //       icon: Icon(Icons.close, color: Colors.black),
              //       onPressed: () {
              //         Navigator.pop(context);
              //       },
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 16),

              // Name Field
              CustomTextField(
                label: 'الاسم',
                controller: TextEditingController(),
              ),
              const SizedBox(height: 16),

              // Email Field
              CustomTextField(
                label: 'البريد الإلكتروني',
                controller: TextEditingController(),
              ),
              const SizedBox(height: 16),

              // Inquiry Field (with more lines)
              CustomTextField(
                label: 'استفسارك',
                controller: TextEditingController(),
                maxLines: 5, // Makes this text field longer
              ),
              const SizedBox(height: 16),

              // Send Button
              SizedBox(
                width: double.infinity, // Full width button
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    backgroundColor: Colors.orange, // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    // Handle send action
                  },
                  child: Text(
                    'ارسال',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final int maxLines;

  CustomTextField({
    required this.label,
    required this.controller,
    this.maxLines = 1, // Default to a single line
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.grey[300], // Light grey background color
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      child: TextField(
        textAlign: TextAlign.right,
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: InputBorder.none, // Remove default border
          hintText: label, // Display label as hint text
          hintStyle: TextStyle(color: Colors.black), // Hint text color
        ),
      ),
    );
  }
}
