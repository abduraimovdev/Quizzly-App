import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';
import 'package:quizzly/controllers/intro_controller.dart';
import 'package:quizzly/controllers/lang_controller.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/text_styles.dart';
import 'package:quizzly/services/extention/localization_ext.dart';
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
              const Spacer(flex: 3),
              Align(
                alignment: const Alignment(0.9, 0),
                child: ValueListenableBuilder(
                    valueListenable: LangController.currentLang,
                    builder: (context, lang, _) {
                      return DropdownButton(
                        dropdownColor: Colors.black.withOpacity(0.4),
                        enableFeedback: false,
                        style: const TextStyle(color: Colors.white),
                        value: lang,
                        items: LangController.languages
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleFlag(e, size: 20),
                                    const SizedBox(width: 10),
                                    Text((e == "us" ? "en" : e).toUpperCase()),
                                  ],
                                ),
                              ),
                            ).toList(),// End Map

                        onChanged: LangController.changeLang,
                      );
                    }),
              ),
              const Spacer(flex: 1),
              Text(
                context.lang.quizzly,
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
                context.lang.choose,
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
