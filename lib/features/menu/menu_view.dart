import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/menu/AboutUsScreen.dart';
import 'package:clean_arc/features/menu/PrivacyScreen.dart';
import 'package:clean_arc/features/menu/ProfileScreen.dart';
import 'package:clean_arc/features/menu/TermsScreen.dart';
import 'package:clean_arc/features/menu/menu_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MenuView extends StatefulWidget {
  const MenuView({super.key});

  static const path = '/MenuView';

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),

                // وضع الشعار في المنتصف
                Center(
                  child: AppImages.images.core.logos.appLogo.image(
                    height: 113,
                    width: 272,
                  ),
                ),

                SizedBox(height: 20),

                // قائمة العناصر
                buildMenuItem(
                    context,
                    AppImages.images.core.svg.pprofile.svg(
                      height: 24,
                      width: 24,
                    ),
                    'الملف الشخصي',
                    ProfileScreen()),
                buildMenuItem(context, AppImages.images.core.svg.store.svg(),
                    'العناوين', AddressScreen()),
                buildMenuItem(
                    context,
                    AppImages.images.core.svg.informationPoint.svg(),
                    'من نحن',
                    AboutUsScreen()),
                buildMenuItem(context, AppImages.images.core.svg.term.svg(),
                    'انضم إلى بابلوشيتا', JoinScreen()),
                buildMenuItem(context, AppImages.images.core.svg.term.svg(),
                    'شروط الاستخدام', TermsScreen()),
                buildMenuItem(
                    context,
                    AppImages.images.core.svg.compliant.svg(),
                    'البيانات والخصوصية',
                    PrivacyScreen()),
                buildMenuItem(
                    context,
                    AppImages.images.core.svg.technicalSupport.svg(),
                    'الدعم الفني',
                    SupportScreen()),

                // إضافة زر خروج أسفل يسار الشاشة
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextApp(text: 'تسجيل الخروج'),
                        IconButton(
                          icon: AppImages.images.core.svg.logOut.svg(
                            height: 24,
                            width: 24,
                          ),
                          onPressed: () {
                            // كود تسجيل الخروج
                            print('تم تسجيل الخروج');
                            // يمكنك إضافة توجيه لشاشة تسجيل الدخول هنا إذا كنت تريد
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // دالة مساعدة لبناء كل عنصر قائمة
  Widget buildMenuItem(
      BuildContext context, Widget icon, String title, Widget targetScreen) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      onTap: () {
        // التوجيه لشاشة جديدة عند الضغط على العنصر
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetScreen),
        );
      },
    );
  }
}

// شاشات placeholder التي سيتم عرضها عند النقر على العناصر

// Method to build profile fields like Name, Email, etc.
Widget buildProfileField(String label, String value, IconData editIcon) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 5),
            Text(
              value,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
        IconButton(
          icon: Icon(editIcon, color: Colors.orange),
          onPressed: () {
            // Action to edit the field
          },
        ),
      ],
    ),
  );
}

// Method to build info tiles like Orders, Favorites, etc.
Widget buildInfoTile(IconData icon, String title, String trailing) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    trailing: Text(trailing),
    onTap: () {
      // Action on tapping the tile
    },
  );
}

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('العناوين')),
        body: Center(child: Text('هذه صفحة العناوين')),
      ),
    );
  }
}

class JoinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('انضم إلى بابلوشيتا')),
      body: Center(child: Text('هذه صفحة الانضمام إلى بابلوشيتا')),
    );
  }
}

// class TermsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('شروط الاستخدام')),
//       body: Center(child: Text('هذه صفحة شروط الاستخدام')),
//     );
//   }
// }

// class PrivacyScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('البيانات والخصوصية')),
//       body: Center(child: Text('هذه صفحة البيانات والخصوصية')),
//     );
//   }
// }

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الدعم الفني')),
      body: Center(child: Text('هذه صفحة الدعم الفني')),
    );
  }
}
