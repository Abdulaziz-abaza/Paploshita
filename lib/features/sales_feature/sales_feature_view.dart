import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/home_feature/presentation/view/componant.dart';
import 'package:clean_arc/features/sales_feature/detailesScreeeen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SalesFeatureView extends StatefulWidget {
  const SalesFeatureView({super.key});

  static const path = '/SalesFeatureView';

  @override
  State<SalesFeatureView> createState() => _SalesFeatureViewState();
}

class _SalesFeatureViewState extends State<SalesFeatureView> {
  int _selectedButtonIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
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

  Widget buildFilterSortButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButton(
          index: 0,
          icon: Icons.list_alt,
          label: 'عرض',
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

  Widget _buildSelectedContent() {
    switch (_selectedButtonIndex) {
      case 0:
        return _buildDisplayContent(); // محتوى الزر "عرض"
      case 1:
        return _buildSortContent(); // محتوى الزر "ترتيب"
      case 2:
        return _buildFilterContent(); // محتوى الزر "تصفية"
      default:
        return Container(); // إذا لم يتم اختيار أي زر
    }
  }

  // مثال على محتوى "عرض"
  Widget _buildDisplayContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 2.5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                    imageUrl: AppImages.images.core.svg.lapTop.path,
                    title: 'Laptop',
                    newPrice: '1000',
                    oldPrice: '1500',
                    discount: '20%',
                    rating: 3,
                    // rating: 2,
                  ),
                ),
              );
            },
            child: ProductCard(
              imageUrl: AppImages.images.core.svg.lapTop.path,
              title: 'Laptop',
              newPrice: '1000',
              oldPrice: '1500',
              discount: '20%',
              isFavorite: true,
              onFavoriteToggle: () {},
              isAssetImage: true,
              rating: 2,
            ),
          );
        },
      ),
    );
  }

  // مثال على محتوى "ترتيب"
  Widget _buildSortContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text('محتوى ترتيب'),
    );
  }

  // مثال على محتوى "تصفية"
  Widget _buildFilterContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text('محتوى تصفية'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              Navigator.pop(context);
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
                  icon: Icon(Icons.shopping_cart),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextField(
                    onChanged: (value) {},
                    onSubmitted: (value) {},
                    decoration: InputDecoration(
                      hintText: '    بحث',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              buildFilterSortButtons(), // أزرار الفرز/التصفية
              SizedBox(height: 16),
              _buildSelectedContent(), // محتوى الزر المحدد
            ],
          ),
        ),
      ),
    );
  }
}

// Example implementation of MyElevatedButtonWithState
class MyElevatedButtonWithState extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final Color pressedColor;
  final bool isSelected;
  final VoidCallback onSelectionChanged;
  final VoidCallback onPressed;

  const MyElevatedButtonWithState({
    required this.icon,
    required this.label,
    required this.color,
    required this.pressedColor,
    required this.isSelected,
    required this.onSelectionChanged,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon, color: isSelected ? pressedColor : color),
      label: Text(label,
          style: TextStyle(color: isSelected ? pressedColor : color)),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: isSelected ? color.withOpacity(0.1) : Colors.white,
        elevation: 0,
      ),
      onPressed: () {
        onSelectionChanged();
        onPressed();
      },
    );
  }
}

// Example implementation of SearchBar
class SearchBar extends StatelessWidget {
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final String hintText;
  final List<Widget> trailing;

  const SearchBar({
    required this.onChanged,
    required this.onSubmitted,
    required this.hintText,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(Icons.search),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: trailing,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
