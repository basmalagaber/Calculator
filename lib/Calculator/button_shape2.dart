import 'package:flutter/material.dart';

class ButtonShape2 extends StatelessWidget {
  String label;
  Color backgroundColor;
  Function oncClick;
   ButtonShape2({super.key,required this.oncClick,required this.label,required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child:SizedBox (
            height: 100,
            width: 80,
            child: ElevatedButton(onPressed: (){
              oncClick(label);
            },
              child: Text(label,
                style: TextStyle(
                    color: Colors.white,
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
