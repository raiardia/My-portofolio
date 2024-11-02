import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      
      
      builder: (context,Constraints){

        if(Constraints.maxWidth>950){
          return DesktopLayout();

        }

        else if (Constraints.maxWidth>600){
          return TabletLayout();}
        
        else{
          return MobileLayout();
        }

      }
    );
  }
}