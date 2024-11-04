import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my/constants/colors.dart';
import 'package:my/screens/widgets/text_widet.dart';

class MyServicesWidget extends StatefulWidget {
  final Size size;
  const MyServicesWidget({super.key, required this.size});

  @override
  State<MyServicesWidget> createState() => _MyServicesWidgetState();
}

class _MyServicesWidgetState extends State<MyServicesWidget> {
  List<bool> _isHovered = [false, false, false];

  // Define a list of services with titles and descriptions
  final List<Map<String, String>> services = [
    {
      "title": "Application Development",
      "description":
          "Learning to create simple, responsive mobile apps with Flutter."
    },
    {
      "title": "UI/UX Design",
      "description":
          "Developing an understanding of intuitive design and user experience principles."
    },
    {
      "title": "Problem Solving",
      "description":
          "Strengthening my ability to analyze and approach technical challenges logically."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: services.length,
        itemBuilder: (context, index) {
          return MouseRegion(
            onEnter: (_) => setState(() => _isHovered[index] = true),
            onExit: (_) => setState(() => _isHovered[index] = false),
            child: AnimatedContainer(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                margin:
                    EdgeInsets.symmetric(horizontal: widget.size.width * 0.05),
                width: widget.size.width,
                decoration: BoxDecoration(
                  color: _isHovered[index] ? null : Colors.transparent,
                  border: Border.all(
                    color: _isHovered[index]
                        ? AppColors.studio.withOpacity(0.5)
                        : Colors.transparent,
                  ),
                  gradient: _isHovered[index]
                      ? LinearGradient(colors: [
                          AppColors.studio,
                          AppColors.ebony,
                        ])
                      : null,
                ),
                child: widget.size.width > 600
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextWidget(
                            sSize: widget.size,
                            text: "${index + 1}",
                            size: 28,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: widget.size.height * 0.04,
                          ),
                          TextWidget(
                            sSize: widget.size,
                            text: services[index]["title"]!,
                            size: 22,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: widget.size.height * 0.08,
                          ),
                          Flexible(
                              child: TextWidget(
                            sSize: widget.size,
                            text: services[index]["description"]!,
                            size: 16,
                            color: Colors.white,
                          )),
                          FaIcon(
                            _isHovered[index]
                                ? FontAwesomeIcons.arrowTrendUp
                                : FontAwesomeIcons.arrowTrendDown,
                            color: _isHovered[index]
                                ? Colors.white
                                : AppColors.studio,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextWidget(
                            sSize: widget.size,
                            text: "${index + 1}",
                            size: 22,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: widget.size.height * 0.04,
                          ),
                          TextWidget(
                            sSize: widget.size,
                            text: services[index]["title"]!,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: widget.size.height * 0.08,
                          ),
                          Wrap(
                            direction: Axis.horizontal,
                            children: [
                              TextWidget(
                                alignment: TextAlign.right,
                                sSize: widget.size,
                                text: services[index]["description"]!,
                                size: 16,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      )),
          );
        });
  }
}
