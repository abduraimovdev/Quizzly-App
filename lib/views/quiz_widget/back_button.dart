import 'package:flutter/material.dart';
import 'package:quizzly/services/constants/colors.dart';

class AppBackButton extends StatelessWidget {
  final void Function() onPress;
  const AppBackButton({
    super.key,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(-0.8, -1),
      child: IconButton(
        onPressed: onPress,
        icon: Icon(
          Icons.arrow_back,
          size: 40,
          color: AppColors.cFFFFFF,
        ),
      ),
    );
  }
}
