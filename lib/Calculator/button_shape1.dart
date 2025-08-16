import 'package:flutter/material.dart';

class ButtonShape1 extends StatelessWidget {
  String label;
  Color backgroundColor;
  Color labelColor;
  Function oncClick;
   ButtonShape1({super.key, required this.oncClick,required this.label,required this.backgroundColor,required this.labelColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child:SizedBox (
          height: 70,
          width: 80,
          child: ElevatedButton(onPressed: (){
            oncClick(label);
          },
            child: Text(label,
              style: TextStyle(
                  color: labelColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 21
              ),),
            style:ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),),
            ),),
        ),
      ));
  }
}
