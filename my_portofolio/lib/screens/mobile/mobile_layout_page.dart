import 'package:flutter/material.dart';
import 'package:my/constants/colors.dart';
import 'package:my/constants/styles.dart';
import 'package:my/screens/tablet/tablet_layout_page.dart';
import 'package:my/screens/widgets/header_text_widget.dart';
import 'package:my/screens/widgets/myservice_widgets.dart';
import 'package:my/screens/widgets/rotating_image_widget.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [RotatingImageContainer()],
                  ),
                ),
                SizedBox(
                  height: size.width * 0.09,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            HeaderTextWidget(
                              size: size,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Social_Tab(size: size)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.09,
                ),

                SizedBox(
                  height: size.width * 0.09,
                ),
                MyServicesWidget(size: size)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
