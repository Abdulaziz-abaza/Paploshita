import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';

class myOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('طلباتي', style: TextStyle(fontSize: 24)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close))
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: [
            OrderCard(
              orderNumber: '#1893',
              orderDate: '30-1-2020',
              orderValue: '270.00 د.ل',
              statusButtonText: 'تتبع الطلب',
              statusButtonColor: Colors.orange,
              cancelButtonVisible: true,
            ),
            OrderCard(
              orderNumber: '1434566',
              orderDate: '30-1-2020',
              orderValue: '270.00 د.ل',
              statusButtonText: 'تم الاستلام',
              statusButtonColor: Colors.green,
              ratingButtonVisible: true,
            ),
            OrderCard(
              orderNumber: '1434566',
              orderDate: '30-1-2020',
              orderValue: '270.00 د.ل',
              statusButtonText: 'ملغى',
              statusButtonColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String orderNumber;
  final String orderDate;
  final String orderValue;
  final String statusButtonText;
  final Color statusButtonColor;
  final bool cancelButtonVisible;
  final bool ratingButtonVisible;

  OrderCard({
    required this.orderNumber,
    required this.orderDate,
    required this.orderValue,
    required this.statusButtonText,
    required this.statusButtonColor,
    this.cancelButtonVisible = false,
    this.ratingButtonVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return myBottomSheet(
                              context); // Call the myBottomSheet widget
                        },
                      );
                    },
                    child: TextApp(
                      text: ' مشاهدة التفاصيل',
                      style: TextStyle(color: Colors.orange),
                    )),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('تاريخ الطلب: $orderDate',
                      style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text('رقم الطلب: $orderNumber',
                  style: TextStyle(fontSize: 16)),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text('قيمه الطلب: $orderValue',
                  style: TextStyle(fontSize: 16)),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (cancelButtonVisible)
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                    ),
                    child: Text('الغاء الطلب'),
                  ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: statusButtonColor,
                  ),
                  child: Text(statusButtonText),
                ),
                if (ratingButtonVisible)
                  Icon(Icons.star, color: Colors.amber, size: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget myBottomSheet(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Adjust size to fit the content
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context); // Close the bottom sheet
              },
            ),
            // Header Row with Order Number and Close Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "No.#1893",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "تاريخ الشراء",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "2021-04-13 13:21",
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Status Timeline
            ListView(
              shrinkWrap: true, // Makes ListView fit within the bottom sheet
              children: [
                _buildTimelineTile(
                  context,
                  "تم الدفع",
                  "2021-04-13 13:39",
                  true,
                  true,
                ),
                _buildTimelineTile(
                  context,
                  "قيد التنفيذ",
                  "2021-04-15 08:07",
                  true,
                  true,
                ),
                _buildTimelineTile(
                  context,
                  "تم الشحن",
                  "2021-04-15 08:07",
                  true,
                  true,
                ),
                _buildTimelineTile(context, "تم التسليم", "", false, false),
              ],
            ),
          ],
        ),
      ),
    );
  }

// Helper function to create each timeline tile
  Widget _buildTimelineTile(BuildContext context, String title, String date,
      bool completed, bool showLineBelow) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Timeline with Circle and Connecting Line
        Column(
          children: [
            // Circle
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: completed ? Colors.black : Colors.deepOrange,
              ),
              width: 20,
              height: 20,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: completed ? Colors.deepOrange : Colors.black),
                  width: 10,
                  height: 10,
                ),
              ),
            ),
            // Line below the circle
            if (showLineBelow)
              Container(height: 60, width: 2, color: Colors.deepOrange),
          ],
        ),
        SizedBox(width: 12),
        // Details of the step (title and date)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (date.isNotEmpty)
              Text(
                date,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
