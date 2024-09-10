import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<void> _pickImage() async {
  final ImagePicker picker = ImagePicker();
  try {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      print('Image selected: ${image.path}');
    } else {
      print('No image selected.');
    }
  } catch (e) {
    print('Error picking image........: $e');
  }
}

Widget buildLicenseImageSection(
  BuildContext context,
  String myText,
) {
  return GestureDetector(
    onTap: () async {
      await _pickImage();
    },
    child: Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: AppImages.images.core.svg.camera.svg(),
              )),
          SizedBox(height: 4),
          TextApp(
            text: myText,
          )
        ],
      ),
    ),
  );
}
