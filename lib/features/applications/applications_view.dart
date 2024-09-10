import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/detiels_product/detiels_product_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ApplicationsView extends StatefulWidget {
  const ApplicationsView({super.key});

  static const path = '/ApplicationsView';

  @override
  State<ApplicationsView> createState() => _ApplicationsViewState();
}

class _ApplicationsViewState extends State<ApplicationsView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              // Handle back button press
            },
          ),
          title: Text(
            'البائعون',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Stack(
              children: <Widget>[
                IconButton(
                  icon: (AppImages.images.core.svg.shoppingCart.svg(
                    width: 25,
                    height: 25,
                  )),
                  onPressed: () {
                    // Handle shopping cart press
                  },
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
        body: DefaultTabController(
          length: 5,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'بحث',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text(
                      'الكل',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'مولات',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'الشركات',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'المحلات',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'مشاريع عبر الإنترنت',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    buildListView(),
                    // buildListView(),
                    Center(child: Text('مولات')),
                    Center(child: Text('الشركات')),
                    Center(child: Text('المحلات')),
                    Center(child: Text('مشاريع عبر الإنترنت')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListView() {
    return ListView.builder(
      itemCount: 5, // Number of items
      itemBuilder: (context, index) {
        return buildItemCard(context);
      },
    );
  }

  Widget buildItemCard(BuildContext context) {
    return Stack(
      children: [
        Card(
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 90.h,
                      height: 100.h,
                      color: Colors.black,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage(AppImages.images.core.svg.lapTop.path),
                        radius: 30.h,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'اسم الشركة',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Row(
                            children: [
                              RatingWidget(
                                  initialRating: 4,
                                  onRatingChanged: (rating) {}),
                              SizedBox(width: 10),
                              Text('4.0'),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Row(
                            children: [
                              AppImages.images.core.svg.handbag.svg(
                                height: 16,
                                width: 16,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'التفاصيل',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(Icons.email, size: 16),
                              SizedBox(width: 4),
                              Text('atqoor91@gmail.com',
                                  style: TextStyle(fontSize: 12)),
                              SizedBox(width: 10),
                              Icon(Icons.phone, size: 16),
                              SizedBox(width: 4.0),
                              Text('0123456789',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Row(
                            children: [
                              Icon(Icons.location_on, size: 16),
                              SizedBox(width: 4),
                              Text('ليبيا /طرابلس المدينة',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: -10,
                  right: -10,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      size: 30,
                      grade: 10,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
