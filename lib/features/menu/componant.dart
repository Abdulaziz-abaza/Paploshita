//
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';

class ProfileFieldTile extends StatelessWidget {
  final String fieldLabel;
  final String? fieldValue;
  final VoidCallback? onEditPressed;

  ProfileFieldTile({
    required this.fieldLabel,
    this.fieldValue,
    this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: TextApp(text: fieldLabel),
          ),
          Expanded(
            flex: 5,
            child: TextApp(text: fieldValue ?? ''),
          ),
          if (onEditPressed != null)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextApp(text: 'تغير'),
                IconButton(
                  onPressed: onEditPressed,
                  icon: Icon(Icons.edit),
                  color: Colors.orange,
                ),
              ],
            )
          else
            SizedBox(width: 100),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final VoidCallback onLeadingTap;
  final VoidCallback onTitleTap;
  final String leadingText;
  final String titleText;
  final String trailingText;

  CustomListTile({
    required this.onLeadingTap,
    required this.onTitleTap,
    required this.leadingText,
    required this.titleText,
    required this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: GestureDetector(
        onTap: onLeadingTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              titleText,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
      title: GestureDetector(
        onTap: onTitleTap,
        child: Text(
          leadingText,
          style: TextStyle(fontSize: 16),
        ),
      ),
      leading: Text(
        trailingText,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
