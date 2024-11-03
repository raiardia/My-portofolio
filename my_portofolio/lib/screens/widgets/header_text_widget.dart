import 'package:flutter/material.dart';
import 'package:my/constants/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;

  const HeaderTextWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:size.width*0.07,vertical:size.height*0.15 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
           SizedBox(height: size.height * 0.10),
          Text(
            "Hello, It's Me",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
           SizedBox(height: size.height * 0.03),
          GradientText(
            "Rai Ardia Anggreni",
            colors: [
              AppColors.studio,
              AppColors.paleSlate,
            ],
            style: TextStyle(
              fontSize: size.width * 0.040,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          SizedBox(
            width: size.width * 0.5,
            child: Text(" I am a fifth-semester Information Technology student at Universitas Pendidikan Nasional (ID: 42230019), with a strong interest in application development and UX design. I am passionate about learning new skills and applying them to create impactful solutions.", style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: "Poppins"))
            
          ),
          
          
        ],
      ),
    );
  }
}
