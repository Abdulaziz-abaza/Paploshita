import 'package:clean_arc/core/app/app_cubit/app_cubit.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';

class RotateWidget extends StatelessWidget {
  RotateWidget({super.key, required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return context.isEnLocale
        ? Transform.rotate(
            angle: 180 * math.pi / 180,
            child: child,
          )
        : child;
  }
}
