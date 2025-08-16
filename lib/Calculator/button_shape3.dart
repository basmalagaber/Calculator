import 'package:flutter/material.dart';

class ButtonShape3 extends StatelessWidget {
  Function oncClick;
  String label;
   ButtonShape3({super.key,required this.oncClick, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child:SizedBox (
            height: 60,
            width: 100,
            child: ElevatedButton(onPressed: (){
              oncClick(label);
            },
              child: Text(label,
                style: TextStyle(
                    color: Color(0xff29A8FF),
                    fontWeight: FontWeight.w400,
                    fontSize: 21
                ),),
              style:ElevatedButton.styleFrom(
                backgroundColor: Color(0xff303136),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),),
              ),),
          ),
        ));

  }
}
