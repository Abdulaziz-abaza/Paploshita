import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/detiels_product/detaielsComponant.dart';
import 'package:clean_arc/features/detiels_product/listviewfiter.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetielsProductView extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String oldPrice;
  final String newPrice;
  final double rating;
  final String discount;
  bool isFavorite;

  DetielsProductView({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.oldPrice,
    required this.newPrice,
    required this.rating,
    required this.discount,
    this.isFavorite = false,
  });

  static const path = '/DetielsProductView';

  @override
  State<DetielsProductView> createState() => _DetielsProductViewState();
}

class _DetielsProductViewState extends State<DetielsProductView> {
  int _selectedButtonIndex = -1;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      backgroundColor: context.color.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
        title: Container(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
              prefixIcon: Icon(Icons.search),
              hintText: context.translate.search,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: widget.title,
                  child: Image.asset(
                    widget.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: widget.isFavorite ? Colors.red : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.isFavorite = !widget.isFavorite;
                      });
                    },
                  ),
                ),
              ],
            ),
            StoreCard(initialRating: widget.rating),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                height: context.height / 14,
                width: double.infinity,
                onPressed: () {},
                child: TextApp(
                  text: 'ارسل استفسار',
                ),
              ),
            ),
            buildFilterSortButtons(),
            _buildSelectedContent(),
          ],
        ),
      ),
    );
  }

  Widget buildFilterSortButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButton(
          index: 0,
          icon: Icons.list_alt,
          label: ' عرض',
          onPressed: () {
            _onButtonPressed(0);
          },
        ),
        const SizedBox(width: 16),
        _buildButton(
          index: 1,
          icon: Icons.sort,
          label: 'ترتيب',
          onPressed: () {
            _onButtonPressed(1);
          },
        ),
        const SizedBox(width: 16),
        _buildButton(
          index: 2,
          icon: Icons.filter_list,
          label: 'تصفية',
          onPressed: () {
            _onButtonPressed(2);
          },
        ),
      ],
    );
  }

  Widget _buildButton({
    required int index,
    required IconData icon,
    required String label,
    Color color = Colors.grey,
    Color pressedColor = Colors.orange,
    required VoidCallback onPressed,
  }) {
    return MyElevatedButtonWithState(
      icon: icon,
      label: label,
      color: color,
      pressedColor: pressedColor,
      isSelected: _selectedButtonIndex == index,
      onSelectionChanged: () => _onButtonPressed(index),
      onPressed: onPressed,
    );
  }

  Widget _buildSelectedContent() {
    if (_selectedButtonIndex == 0) {
      return ProductListScreen();
    } else if (_selectedButtonIndex == 1) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        showSortOptions(context);
      });
      return Container();
    } else if (_selectedButtonIndex == 2) {
      return ProductSortListScreen();
    } else {
      return Container();
    }
  }
}

class RatingWidget extends StatefulWidget {
  final double initialRating;
  final ValueChanged<double> onRatingChanged;

  RatingWidget({
    required this.initialRating,
    required this.onRatingChanged,
  });

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  late double _currentRating;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  void _updateRating(double rating) {
    setState(() {
      _currentRating = rating;
    });
    widget.onRatingChanged(_currentRating);
  }

  Widget _buildStar(int index) {
    return GestureDetector(
      onTap: () => _updateRating(index + 1.0),
      child: Icon(
        _currentRating >= index + 1 ? Icons.star : Icons.star_border,
        color: Colors.amber,
        size: 16,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) => _buildStar(index)),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0, left: 300),
      child: AppImages.images.core.svg.chatpng
          .image(height: 200, width: 200, fit: BoxFit.cover),
    );
  }
}
