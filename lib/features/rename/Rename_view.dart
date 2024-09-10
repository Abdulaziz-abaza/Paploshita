import 'package:clean_arc/core/routing/app_router.gr.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RenameView extends StatefulWidget {
  const RenameView({super.key});

  static const path = '/RenameViewView';

  @override
  State<RenameView> createState() => _RenameViewState();
}

class _RenameViewState extends State<RenameView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Rename View")),
            IconButton(
                onPressed: () {
                  context.pushRoute(const HomeViewRoute());
                },
                icon: Icon(Icons.arrow_back)),
          ],
        ),
      ),
    );
  }
}
