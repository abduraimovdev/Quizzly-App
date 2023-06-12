import 'package:flutter/material.dart';
import 'package:quizzly/controllers/intro_controller.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/strings.dart';
import 'package:quizzly/services/constants/text_styles.dart';
import 'package:quizzly/views/intro_screen/custom_button.dart';
import 'package:quizzly/views/intro_screen/custom_welcon_to_quizzly.dart';

class IntroScreen extends StatefulWidget {
  static const id = "/intro";

  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late final IntroController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = IntroController(updater: setState);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.cD014FF,
            image: const DecorationImage(
              image: AssetImage("assets/images/img_background1.png"),
              fit: BoxFit.cover,
            ),
          ),

          ///
          child: Column(
            children: [
              const Spacer(flex: 5),
              Text(
                Strings.quizzly.text,
                style: AppTextStyles.expletusSans67.copyWith(
                  color: AppColors.cFFFFFF,
                ),
              ),

              ///
              const Spacer(flex: 3),

              ///
              const CustomWelcomeToQuizzly(),
              const Spacer(flex: 5),
              Text(
                Strings.choose.text,
                style:
                    AppTextStyles.dmsans24.copyWith(color: AppColors.cFFFFFF),
              ),

              ///
              CustomButton(controller: controller),
              const Spacer(flex: 4),
            ],
          ),
        ),
      ),
    );
  }
}
