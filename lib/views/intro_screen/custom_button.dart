import 'package:flutter/cupertino.dart';
import 'package:quizzly/controllers/intro_controller.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/text_styles.dart';
import 'package:quizzly/services/extention/localization_ext.dart';

class CustomButton extends StatefulWidget {
  final IntroController controller;
  const CustomButton({Key? key, required this.controller}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 62, right: 62, top: 15),
          child: CupertinoButton(
            onPressed: () => IntroController.buttonLevelOne(context),
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.cD014FF,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2, color: AppColors.cFFFFFF),
              ),
              child: Text(
                context.lang.level1,
                style:
                    AppTextStyles.dmsans20.copyWith(color: AppColors.cFFFFFF),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 62, right: 62, top: 10),
          child: CupertinoButton(
            onPressed: () => IntroController.buttonLevelTwo(context),
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.cD014FF,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2, color: AppColors.cFFFFFF),
              ),
              child: Text(
                context.lang.level2,
                style:
                    AppTextStyles.dmsans20.copyWith(color: AppColors.cFFFFFF),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 62, right: 62, top: 10),
          child: CupertinoButton(
            onPressed: () => IntroController.buttonLevelThree(context),
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.cD014FF,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2, color: AppColors.cFFFFFF),
              ),
              child: Text(
                context.lang.level3,
                style:
                    AppTextStyles.dmsans20.copyWith(color: AppColors.cFFFFFF),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
