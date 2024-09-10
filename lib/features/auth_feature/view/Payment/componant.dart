import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class DetielsProductShopingCard extends StatefulWidget {
  final String imageUrl;
  final String storetitle;
  final String categoryttitle;
  final Widget categoryicon;
  final String oldPrice;
  final String newPrice;
  final String discount;
  final bool isAssetImage;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  DetielsProductShopingCard({
    required this.categoryicon,
    required this.categoryttitle,
    required this.imageUrl,
    required this.storetitle,
    required this.oldPrice,
    required this.newPrice,
    required this.discount,
    this.isAssetImage = false,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  _DetielsProductShopingCardState createState() =>
      _DetielsProductShopingCardState();
}

class _DetielsProductShopingCardState extends State<DetielsProductShopingCard> {
  int count = 1;

  void _updateCount(bool isAdding) {
    setState(() {
      if (isAdding) {
        count++;
      } else if (count > 1) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  child: widget.isAssetImage
                      ? Image.asset(
                          widget.imageUrl,
                          height: 130,
                          width: 180,
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          widget.imageUrl,
                          height: 120,
                          width: 120,
                          fit: BoxFit.fill,
                        ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.storetitle,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Text(
                            widget.newPrice,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            widget.oldPrice,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () => _updateCount(true),
                                child: Icon(Icons.add, size: 20),
                              ),
                              SizedBox(width: 5),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                height: 24,
                                width: 24,
                                child: Text(
                                  '$count',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () => _updateCount(false),
                                child: Icon(Icons.remove, size: 20),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: widget.onFavoriteToggle,
                            icon: Icon(Icons.delete_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                widget.discount,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OrderSummary extends StatelessWidget {
  final double itemsPrice;
  final double shippingFee;
  final double discount;
  // final double totalPrice;

  const OrderSummary({
    Key? key,
    required this.itemsPrice,
    required this.shippingFee,
    required this.discount,
    // required this.totalPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'تفاصيل الطلب',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'قيمة المشتريات',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$itemsPrice ل.د',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'خدمة التوصيل',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$shippingFee ل.د',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'قسيمة الخصم',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$discount ل.د',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}

class ShippingDetails extends StatelessWidget {
  final String address;

  const ShippingDetails({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: const InputDecoration(labelText: 'عنوان التوصيل'),
          controller: TextEditingController(text: address),
        ),
        const SizedBox(height: 8),
        Container(
          height: 150,
          color: Colors.grey[300],
          child: const Center(child: Text('Map Placeholder')),
        ),
      ],
    );
  }
}

Widget customTextFieldWithText() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Row(
      children: [
        Container(
          width: 2.0,
          height: 20.0,
          margin: EdgeInsets.only(right: 8.0),
        ),
        // Left text ("تطبيق")
        Text(
          'تطبيق',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 8.0),
        // Vertical divider line
        Container(
          height: 20.0,
          width: 1.0,
          color: Colors.grey,
        ),
        SizedBox(width: 8.0),
        // Text field
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'هل لديك قسيمة',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
            textAlign: TextAlign.start, // Align text to the right
          ),
        ),
      ],
    ),
  );
}

class PaymentOptionsWidget extends StatefulWidget {
  @override
  _PaymentOptionsWidgetState createState() => _PaymentOptionsWidgetState();
}

class _PaymentOptionsWidgetState extends State<PaymentOptionsWidget> {
  int _selectedOption = 1; // Default selected option is 1

  void _handleOptionChange(int value) {
    setState(() {
      _selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildPaymentOptions(
      selectedOption: _selectedOption,
      onOptionSelected: _handleOptionChange,
    );
  }

  Widget buildPaymentOptions(
      {required int selectedOption, required Function(int) onOptionSelected}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'طريقة الدفع',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        RadioListTile<int>(
          value: 1,
          groupValue: selectedOption,
          onChanged: (int? value) {
            onOptionSelected(value!);
          },
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('دفع الكتروني'),
              SizedBox(width: 8),
              AppImages.images.core.svg.mastercsrd.image(
                height: 24,
                width: 24,
                color: Colors.orange,
              ),
            ],
          ),
          activeColor: Colors.orange,
        ),
        RadioListTile<int>(
          value: 2,
          groupValue: selectedOption,
          onChanged: (int? value) {
            onOptionSelected(value!);
          },
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('الدفع ,,,,,,عند الاستلام'),
              SizedBox(width: 8),
              AppImages.images.core.svg.deliveryMan.svg(
                  // height: 24,
                  // width: 24,
                  // color: Colors.orange,
                  ),
            ],
          ),
          activeColor: Colors.orange,
        ),
      ],
    );
  }
}

Widget buildPaymentOptions({
  required int selectedOption,
  required Function(int) onOptionSelected,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: const Text(
          'طريقة الدفع',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Row(
        children: [
          Radio<int>(
            value: 1,
            groupValue: selectedOption,
            onChanged: (int? value) {
              onOptionSelected(value!);
            },
            activeColor: Colors.orange,
          ),
          Expanded(
            child: Text(
              'دفع الكتروني',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(width: 8),
          Icon(Icons.credit_card, size: 30),
        ],
      ),
      Row(
        children: [
          Radio<int>(
            value: 2,
            groupValue: selectedOption,
            onChanged: (int? value) {
              onOptionSelected(value!);
            },
            activeColor: Colors.orange,
          ),
          Expanded(
            child: Text('الدفع عند الاستلام',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ),
          SizedBox(width: 8),
          AppImages.images.core.svg.mastercsrd.image(
            height: 40,
            width: 40,
          ),
        ],
      ),
    ],
  );
}
