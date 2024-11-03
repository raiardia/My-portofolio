import 'package:flutter/material.dart';
import 'package:my/constants/colors.dart';
import 'package:my/constants/styles.dart';
import 'package:my/screens/widgets/header_text_widget.dart';


class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          HeaderTextWidget(
                              size: size), // Tambahkan `size` parameter di sini
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
