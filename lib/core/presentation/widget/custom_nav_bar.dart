import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/menu/Menu_view.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/features/applications/applications_view.dart';
import 'package:clean_arc/features/auth_feature/view/toBeMarkter/toBeMarkter_view.dart';
import 'package:clean_arc/features/home_feature/presentation/view/home_view.dart';
import 'package:clean_arc/features/sales_feature/sales_feature_view.dart';

@RoutePage()
class CustomNavBarView extends StatefulWidget {
  const CustomNavBarView({super.key});

  @override
  State<CustomNavBarView> createState() => _CustomNavBarViewState();
}

class _CustomNavBarViewState extends State<CustomNavBarView> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    HomeView(),
    ApplicationsView(),
    TobemarkterView(),
    SalesFeatureView(),
    MenuView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      // إخفاء الـ BottomNavigationBar في MenuView فقط
      bottomNavigationBar: _selectedIndex == 4
          ? null // لا يظهر NavBar في MenuView
          : BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: _selectedIndex == 0
                      ? AppImages.images.core.svg.homInpress.svg()
                      : AppImages.images.core.svg.home1.svg(),
                  label: _selectedIndex == 0 ? '' : 'الرئسية',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 1
                      ? AppImages.images.core.svg.store.svg()
                      : AppImages.images.core.svg.store.svg(),
                  label: _selectedIndex == 1 ? '' : 'البائعون',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 2
                      ? AppImages.images.core.svg.category.svg()
                      : AppImages.images.core.svg.category.svg(),
                  label: _selectedIndex == 2 ? '' : 'التخفيضات',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 3
                      ? AppImages.images.core.svg.wPriceTAG.svg()
                      : AppImages.images.core.svg.wPriceTAG.svg(),
                  label: _selectedIndex == 3 ? '' : 'التصنيفات',
                ),
                BottomNavigationBarItem(
                  icon:
                      _selectedIndex == 4 ? Icon(Icons.menu) : Icon(Icons.menu),
                  label: 'menu',
                ),
              ],
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              onTap: _onItemTapped,
            ),
    );
  }
}
