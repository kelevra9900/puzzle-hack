import 'dart:math';

import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../../utils/dark_mode_extension.dart';

class GameBackground extends StatelessWidget {
  final Widget child;
  const GameBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.isDarkMode;
    //  Colors.primaries[i].withOpacity(0.2);
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: isDarkMode ? darkColor : lightColor2,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Transform.rotate(
            angle: pi,
            child: Image.asset(
              'assets/images/jungle.png',
              color: Colors.primaries[8].withOpacity(0.1),
            ),
          ),
        ),
        Positioned.fill(
          child: child,
        ),
      ],
    );
  }
}
