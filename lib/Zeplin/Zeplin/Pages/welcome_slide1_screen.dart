import 'package:first_project_flutter/Zeplin/Zeplin/Colors/colors.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Padding/welcome_slide_pages_padding.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Pages/welcome_slide2_screen.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Text%20Style/text_style.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Widgets/Buttons/peach_button_without_icon.dart';
import 'package:flutter/material.dart';
import '../ImagePaths/images.dart';
import '../Texts/Titles/Messages/languages.dart';

class WelcomeSlide1 extends StatefulWidget {
  const WelcomeSlide1({super.key});

  @override
  State<WelcomeSlide1> createState() => _WelcomeSlide1State();
}

class _WelcomeSlide1State extends State<WelcomeSlide1> {
  final double _sizedBoxHeight = 50;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
          ),
          Padding(
            padding: WelcomeSlidePaddingUtility().containerPadding,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.46,
              decoration:
                  BoxDecoration(image: DecorationImage(image: ZeplinImages().welcomeSlide1Image, fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: WelcomeSlidePaddingUtility().textPadding,
            child: Text(
              Languages().welcomeSlide1title1,
              style: ZeplinTextStyle().largeTitle.copyWith(color: ZeplinColors().peach),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: WelcomeSlidePaddingUtility().elevatedButtonPadding,
            child: SizedBox(
              height: _sizedBoxHeight,
              width: double.infinity,
              child: PeachElevatedWithoutIcon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const WelcomeSlide2(),
                  ));
                },
                child: Text(Languages().welcomeSlide1title2),
              ),
            ),
          )
        ],
      ),
    );
  }
}
