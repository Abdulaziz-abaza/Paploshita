import 'dart:async';

import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/view/Cart/componant.dart';
import 'package:clean_arc/features/auth_feature/view/Payment/Payment_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Ensure you have this package for screen responsiveness

@RoutePage()
class CartView extends StatefulWidget {
  const CartView({super.key});

  static const path = '/CartView';

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final List<Map<String, String?>> products = [
    {
      'imageUrl': AppImages.images.core.svg.lapTop.path,
      'storetitle': 'laptop ',
      'oldPrice': '120.00',
      'newPrice': '80.00',
      'discount': '23%',
    },
    {
      'imageUrl': AppImages.images.core.svg.phoneRate.path,
      'storetitle': 'Samsung Phone 2',
      'oldPrice': '150.00',
      'newPrice': '100.00',
      'discount': '30%',
      'categoryttitle': 'أحذية',
      'categoryicon': AppImages.images.core.svg.icon3.path,
    },
  ];
  dynamic _selectedOption = 1;
  int _radioValue = 1;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          products.length == 1 || products.length == 2
              ? '${products.length} عنصر في السلة'
              : '${products.length} عناصر في السلة',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: DetielsProductShopingCard(
                      imageUrl: product['imageUrl'] ??
                          'https://via.placeholder.com/150',
                      isAssetImage: true,
                      storetitle: product['storetitle'] ?? 'Default Title',
                      oldPrice: product['oldPrice'] ?? '0.00',
                      newPrice: product['newPrice'] ?? '0.00',
                      discount: product['discount'] ?? '0%',
                      onFavoriteToggle: () {},
                      categoryttitle:
                          product['categoryttitle'] ?? 'Default Category',
                      isFavorite: true,
                      categoryicon: product['categoryicon'] != null
                          ? Image.asset(
                              product['categoryicon']!,
                              width: 11.5,
                              height: 11.5,
                              fit: BoxFit.fill,
                            )
                          : Container(
                              width: 11.5,
                              height: 11.5,
                              color: Colors.grey,
                            ),
                    ),
                  );
                },
              ),
              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' الاستلام ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildContainer(
                      myImage: AppImages.images.core.svg.deliveryMan.svg(),
                      text: 'خدمة التوصيل',
                      index: 0,
                      isSelected: _selectedOption == 0,
                      onTap: () {
                        setState(() {
                          _selectedOption = _selectedOption == 0 ? null : 0;
                        });
                      },
                    ),
                    _buildContainer(
                      text: 'استلام من المتجر',
                      myImage: AppImages.images.core.svg.deliveryMan.svg(),
                      index: 1,
                      isSelected: _selectedOption == 1,
                      onTap: () {
                        setState(() {
                          _selectedOption = _selectedOption == 1 ? null : 1;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              if (_selectedOption == 0)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'عنوان التوصيل',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            hintText: ' المنطقة',
                            fillColor: Colors.grey.withOpacity(0.1),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: CustomTextField(
                            hintText: ' المدينة',
                            fillColor: Colors.grey.withOpacity(0.1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: CustomTextField(
                            hintText: ' رقم المنزل واسم الشارع',
                            fillColor: Colors.grey.withOpacity(0.1),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 60,
                            width: 80,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 60,
                                width: 80,
                                child: AppImages.images.core.svg.location.svg(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              if (_selectedOption == 1)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'عنوان المتجر ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      ' زاوية الدهمانى - شارع القبطان بعد عيادة وصيدلية القبطان - طرابلس - ليبيا',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 16),
              Container(
                height: 134,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
              SizedBox(height: 16),
              OrderSummary(
                discount: 10,
                itemsPrice: 100,
                shippingFee: 10,
              ),
              buildPaymentOptions(
                selectedOption: _radioValue,
                onOptionSelected: (int newValue) {
                  setState(() {
                    _radioValue = newValue;
                  });
                },
              ),
              SizedBox(height: 16),
              buildOrderSummary1(
                currency: 'ل.د',
                onConfirmOrder: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentView(),
                    ),
                  );
                },
                totalAmount: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer({
    required String text,
    required Widget myImage,
    required int index,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            // color: isSelected ? Colors.orange : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: isSelected ? Colors.orange : Colors.grey, width: 2)),
        child: Row(
          children: [
            myImage,
            SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildOrderSummary1({
  required double totalAmount,
  required String currency,
  required VoidCallback onConfirmOrder,
}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: Colors.grey.withOpacity(0.1),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    'الطلب:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'الإجمالي الخاص بطلبك',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Text(
              '$totalAmount $currency',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: 48,
          child: CustomButton(
              onPressed: onConfirmOrder,
              child: Text(
                'إتمام الطلب',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
        ),
      ],
    ),
  );
}
