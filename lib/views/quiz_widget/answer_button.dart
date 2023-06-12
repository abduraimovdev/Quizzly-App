import 'package:flutter/cupertino.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/text_styles.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.onPress,
    required this.label,
  });

  final String label;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPress,
      child: Container(
        width: 300,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: AppColors.cA42FC1,
            width: 2,
          ),
        ),
        child: Text(
          label,
          style: AppTextStyles.dmsans20.copyWith(color: AppColors.c2B262D),
        ),
      ),
    );
  }
}
