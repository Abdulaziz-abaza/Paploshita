import 'dart:async';

import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/view/joinToDriver/componant.dart';
import 'package:clean_arc/features/auth_feature/view/openNewStore/componant.dart';
import 'package:clean_arc/features/menu/componant.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// Open New Store View
@RoutePage()
class OpenNewStoreView extends StatelessWidget {
  static const path = '/OpenstoreViewRoute';

  @override
  Widget build(BuildContext context) {
    return BaseStoreView(
      children: [
        CustomTextField(
          hintText: 'اسم المتجر',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('https://paploshita.com/store/[متجرك]'),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
                child: CustomDropdownField(
              options: ['2332', ' 020', ' 212'],
              hintText: 'نوع النشاط',
              fillColor: Colors.grey.withOpacity(0.1),
            )),
            SizedBox(width: 16.0),
            Expanded(
                child: CustomDropdownField(
              options: ['2332', ' 020', ' 212'],
              hintText: 'نوع التجارة',
              fillColor: Colors.grey.withOpacity(0.1),
            )),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              child: CustomDropdownField(
                options: ['2332', ' 020', ' 212'],
                hintText: 'بلد',
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
                child: CustomDropdownField(
              options: ['2332', ' 020', ' 212'],
              hintText: 'مدينة',
              fillColor: Colors.grey.withOpacity(0.1),
            )),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: CustomDropdownField(
                options: ['2332', ' 020', ' 212'],
                hintText: 'هاتف المتجر',
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
                flex: 1,
                child: CustomDropdownField(
                  options: ['22', ' 20', ' 12'],
                  hintText: '3',
                  fillColor: Colors.grey.withOpacity(0.1),
                )),
          ],
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'عنوان الفرع الاول',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'عنوان الفرع الثاني',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'عنوان الفرع الثالث',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 32.0),
        _buildRegisterButton(context),
      ],
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return CustomButton(
      height: 44,
      child: Text('تسجيل', style: TextStyle(color: Colors.white)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CompleteRegistrationView()),
        );
      },
    );
  }
}

class CompleateInfoView extends StatelessWidget {
  static const path = '/CompleateInfoViewRoute';

  @override
  Widget build(BuildContext context) {
    return BaseStoreView(
      children: [
        CustomTextField(
          hintText: 'اسم المتجر',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('https://paploshita.com/store/[متجرك]'),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              child: CustomDropdownField(
                options: ['2332', ' 020', ' 212'],
                hintText: 'نوع النشاط ',
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: CustomDropdownField(
                options: ['2332', ' 020', ' 212'],
                hintText: 'نوع التجارة  ',
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              child: CustomDropdownField(
                options: ['cairo', ' giza', ' alexandria'],
                hintText: ' البلد ',
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: CustomDropdownField(
                options: ['cairo', ' giza', ' alexandria'],
                hintText: 'المدينة  ',
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hintText: 'هاتف المتجر',
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: CustomDropdownField(
                options: ['1', ' 2', ' 3'],
                hintText: 'عدد الفروع ',
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
          ],
        ),
        SizedBox(height: 40.0),
        CustomButton(
          height: 44,
          child: Text(' تسجيل ', style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => WelcomeToPaploshitaView()),
            );
          },
        )
      ],
    );
  }
}

class CompleteRegistrationView extends StatelessWidget {
  static const path = '/CompleteRegistrationViewRoute';

  @override
  Widget build(BuildContext context) {
    return BaseStoreView(
      children: [
        CustomTextField(
          hintText: 'الاسم/ اللقب ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'رقم الجوال ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'البريد الالكتروني ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: CustomTextField(
                hintText: ' رمز التحقق',
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
                flex: 2,
                child: CustomButton(
                    height: 60, child: Text('اعادة ارسال'), onPressed: () {})),
          ],
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'كلمة المرور   ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'تاكيد كلمة المرور',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 60.0),
        CustomButton(
          height: 44,
          child: Text('التالى', style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CompleateInfoView()),
            );
          },
        )
      ],
    );
  }
}

class WelcomeToPaploshitaView extends StatelessWidget {
  static const path = '/WelcomeToPaploshitaViewRoute';

  @override
  Widget build(BuildContext context) {
    return BaseStoreView(
      children: [
        Text(
          'مرحباً بك في بابلوشيتا!',
          style: context.textStyle.copyWith(fontSize: 24.0),
        ),
        SizedBox(height: 60.0),
        Text(
          'شكراً لاختياركبابلوشيتا! سيساعدك معالج الإعداد السريع هذا في تكوين الإعدادات الأساسية وسيكون لديك متجرك جاهزًا في أي وقت من الأوقات!',
          style: context.textStyle.copyWith(fontSize: 24.0),
        ),
        SizedBox(height: 20.0),
        Text(
          'شكراً لاختياركبابلوشيتا! سيساعدك معالج الإعداد السريع هذا في تكوين الإعدادات الأساسية وسيكون لديك متجرك جاهزًا في أي وقت من الأوقات!',
          style: context.textStyle.copyWith(fontSize: 24.0),
        ),
        SizedBox(height: 60.0),
        CustomButton(
          height: 44,
          child: Text('تسجيل', style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsView()),
            );
          },
        )
      ],
    );
  }
}

class SettingsView extends StatelessWidget {
  static const path = '/SettingsViewRoute';
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return BaseStoreView(
      children: [
        Text(
          '  اعدادات المتجر ',
          style: context.textStyle.copyWith(fontSize: 24.0),
        ),
        SizedBox(height: 20.0),
        buildLicenseImageSection(
          context,
          'صورة رخصة القيادة',
        ),
        SizedBox(height: 16.0),
        buildLicenseImageSection(context, 'صورة لافتة'),
        SizedBox(height: 16.0),
        Text(
          '   تحميل لافتة لمتجرك. حجم البانر هو (1650x350) بكسل. ',
          style: context.textStyle.copyWith(fontSize: 24.0),
        ),
        SizedBox(height: 20.0),
        CustomTextField(
          hintText: 'اسم المحل ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'البريد الالكتروني الخاص بالمتجر  ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: ' هاتف المتجر ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: ' عنوان المتجر 1 ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'عنوان المتجر 2 ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: ' مدينة المتجر / البلدة   ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: '  تخزين الرمز البريدي / الرمز البريدي',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: ' بلد المتجر*   ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: '  ولاية / مقاطعة المتجر*',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          height: 134,
          width: double.infinity,
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          maxLines: 5,
          hintText: '   وصف المحل',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 20.0),
        CustomButton(
          height: 44,
          child: Text('التالى', style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentSectionView()),
            );
          },
        )
      ],
    );
  }
}

class PaymentSectionView extends StatelessWidget {
  static const path = '/PaymentSectionViewRoute';

  @override
  Widget build(BuildContext context) {
    return BaseStoreView(
      children: [
        Text(
          ' إعداد الدفع  ',
          style: context.textStyle.copyWith(fontSize: 24.0),
        ),
        SizedBox(height: 60.0),
        Text(
          'يفضل تحديد الطريقة الخاصة بك للدفع. ',
          style: context.textStyle.copyWith(fontSize: 16.0),
        ),
        SizedBox(height: 20.0),
        CustomDropdownField(
          options: ['visa', 'mastercard', 'amex'],
          hintText: 'حدد ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 60.0),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                height: 44,
                child: Text('استمر', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PolicySettingsView()),
                  );
                },
              ),
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'تخطي',
                      style: context.textStyle
                          .copyWith(color: Colors.black, fontSize: 16.0),
                    )))
          ],
        )
      ],
    );
  }
}

class PolicySettingsView extends StatelessWidget {
  static const path = '/PolicySettingsViewRoute';

  @override
  Widget build(BuildContext context) {
    return BaseStoreView(
      children: [
        Text(
          'إعداد النهج',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'تسمية علامة تبويب السياسة',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 16),
        CustomDropdownField(
          hintText: 'حدد',
          fillColor: Colors.grey.withOpacity(0.1),
          options: ['2', '5  '],
        ),
        SizedBox(height: 24),
        CustomListTile(
          onLeadingTap: () {},
          onTitleTap: () {},
          leadingText: 'إضافة',
          titleText: '',
          trailingText: 'سياسة التوصيل ',
        ),
        Divider(),
        CustomListTile(
          onLeadingTap: () {},
          onTitleTap: () {},
          leadingText: 'إضافة',
          titleText: '',
          trailingText: 'سياسة  الاسترجاع',
        ),
        Divider(),
        CustomListTile(
          onLeadingTap: () {},
          onTitleTap: () {},
          leadingText: 'إضافة',
          titleText: '',
          trailingText: 'سياسة الالغاء / الاسترجاع/ الاستبدال',
        ),
        Divider(),
        SizedBox(height: 60.0),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                height: 44,
                child: Text('استمر', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SupportSettingsView()),
                  );
                },
              ),
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'تخطي',
                      style: context.textStyle
                          .copyWith(color: Colors.black, fontSize: 16.0),
                    )))
          ],
        )
      ],
    );
  }
}

class SupportSettingsView extends StatelessWidget {
  static const path = '/SupportSettingsViewRoute';

  @override
  Widget build(BuildContext context) {
    List<String> sameTexts = generateHintTextsForSupportSettingsView();

    return BaseStoreView(
      children: [
        Text(
          'إعداد الدعم',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: sameTexts.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CustomTextField(
                  hintText: sameTexts[index],
                  fillColor: Colors.grey.withOpacity(0.1),
                ),
                SizedBox(height: 16.0),
              ],
            );
          },
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                height: 44,
                child: Text('استمر', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsSEOView()),
                  );
                },
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'تخطي',
                  style: context.textStyle
                      .copyWith(color: Colors.black, fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SettingsSEOView extends StatelessWidget {
  static const path = '/SettingsSEOViewRoute';

  @override
  Widget build(BuildContext context) {
    return BaseStoreView(
      children: [
        Text(
          'تخزين اعدادت SEO ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'عنوان SEO',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'ميتا الوصف',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: ' كلمات دلالية ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        Text(
          ' إعداد Facebook  ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: ' عنوان الفيسبوك',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'وصف الفيسبوك ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        buildLicenseImageSection(context, 'صورة الفيسبوك '),
        SizedBox(height: 16.0),
        Text(
          ' إعداد Twitter  ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: ' عنوان تويتر',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        CustomTextField(
          hintText: 'وصف تويتر ',
          fillColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(height: 16.0),
        buildLicenseImageSection(context, 'صورة تويتر '),
        SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                height: 44,
                child: Text('استمر', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SocialStoreSettingsView(),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'تخطي',
                  style: context.textStyle
                      .copyWith(color: Colors.black, fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SocialStoreSettingsView extends StatelessWidget {
  static const path = '/SocialStoreSettingsViewRoute';

  @override
  Widget build(BuildContext context) {
    List<String> sameTexts2 = generateHintTextsForSocialStoreSettingsView();

    return BaseStoreView(
      children: [
        Text(
          ' إعداد المتجر الاجتماعي',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: sameTexts2.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CustomTextField(
                  hintText: sameTexts2[index],
                  fillColor: Colors.grey.withOpacity(0.1),
                ),
                SizedBox(height: 16.0),
              ],
            );
          },
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                height: 44,
                child: Text('استمر', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CongratulationsToPaploshitaView()),
                  );
                },
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'تخطي',
                  style: context.textStyle
                      .copyWith(color: Colors.black, fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CongratulationsToPaploshitaView extends StatelessWidget {
  static const path = '/CongratulationsToPaploshitaView';

  @override
  Widget build(BuildContext context) {
    return BaseStoreView(
      children: [
        Text(
          ' لقد إنتهينا!',
          style: context.textStyle.copyWith(fontSize: 24.0),
        ),
        SizedBox(height: 60.0),
        Text(
          'متجرك جاهز. حان الوقت لتجربة الأشياء بسهولة وسلام. أضف منتجاتك وابدأ في حساب المبيعات ، استمتع !!',
          style: context.textStyle.copyWith(fontSize: 24.0),
        ),
        SizedBox(height: 60.0),
        CustomButton(
          height: 44,
          child: Text('لوحة القيادة', style: TextStyle(color: Colors.white)),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PaymentSectionView()),
            // );
          },
        )
      ],
    );
  }
}
