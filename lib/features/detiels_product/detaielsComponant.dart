import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/features/detiels_product/detiels_product_view.dart';
import 'package:flutter/material.dart';

class DetielsProductCard extends StatelessWidget {
  final String imageUrl;
  final String storetitle;
  final String categoryttitle;
  final Widget categoryicon;

  final String oldPrice;
  final String newPrice;
  final num rating;
  final String discount;
  final bool isAssetImage;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  DetielsProductCard({
    required this.categoryicon,
    required this.categoryttitle,
    required this.imageUrl,
    required this.storetitle,
    required this.oldPrice,
    required this.newPrice,
    required this.rating,
    required this.discount,
    this.isAssetImage = false,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  child: isAssetImage
                      ? Image.asset(
                          imageUrl,
                          height: 130,
                          width: 180,
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          imageUrl,
                          height: 120,
                          width: 120,
                          fit: BoxFit.fill,
                        ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      discount,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  storetitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  // maxLines: 1,
                ),
                Row(
                  children: [
                    categoryicon,
                    SizedBox(width: 5),
                    Text(
                      categoryttitle,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      // maxLines: 1,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              newPrice,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              oldPrice,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: List.generate(5, (index) {
                                if (index < rating.floor()) {
                                  return Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Colors.amber,
                                  );
                                } else if (index < rating) {
                                  return Icon(
                                    Icons.star_half,
                                    size: 12,
                                    color: Colors.amber,
                                  );
                                } else {
                                  return Icon(
                                    Icons.star_border,
                                    size: 12,
                                    color: Colors.amber,
                                  );
                                }
                              }),
                            ),
                            SizedBox(width: 5),
                            Text(
                              rating.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 35),
                    GestureDetector(
                      onTap: onFavoriteToggle,
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: isFavorite ? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  final double initialRating;

  StoreCard({required this.initialRating});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'فاملي ستور',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                AppImages.images.core.svg.icon3.path,
                                width: 11.5,
                                height: 11.5,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width: 3),
                              Text(
                                'حقائب',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              RatingWidget(
                                initialRating: initialRating,
                                onRatingChanged: (rating) {
                                  // print("New Rating: $rating");
                                },
                              ),
                              SizedBox(width: 4),
                              Text(
                                initialRating.toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        AppImages.images.core.svg.lapTop.path,
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.phone, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '0923126340',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.email, size: 16),
                      SizedBox(width: 4),
                      Text(
                        'example@email.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
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
    );
  }
}

class MyElevatedButtonWithState extends StatefulWidget {
  final IconData icon;
  final String label;
  final Color color;
  final Color pressedColor;
  final VoidCallback onPressed;
  final bool isSelected;
  final VoidCallback onSelectionChanged;

  const MyElevatedButtonWithState({
    required this.icon,
    required this.label,
    this.color = Colors.grey,
    this.pressedColor = Colors.orange,
    required this.onPressed,
    required this.isSelected,
    required this.onSelectionChanged,
  });

  @override
  _MyElevatedButtonWithStateState createState() =>
      _MyElevatedButtonWithStateState();
}

class _MyElevatedButtonWithStateState extends State<MyElevatedButtonWithState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 219, 217, 217).withOpacity(0.2),
            spreadRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: OutlinedButton.icon(
        icon: Icon(
          widget.icon,
          color: widget.isSelected ? widget.pressedColor : widget.color,
        ),
        label: Text(
          widget.label,
          style: TextStyle(
            color: widget.isSelected ? widget.pressedColor : widget.color,
          ),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          side: const BorderSide(color: Colors.transparent),
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        ),
        onPressed: () {
          widget.onSelectionChanged();
          widget.onPressed();
        },
      ),
    );
  }
}
