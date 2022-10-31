import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AutoDetectionAppBar extends StatelessWidget{

  const AutoDetectionAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GestureDetector(
        onTapUp: (details){
         Get.back();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Icon(Icons.arrow_back,color: Colors.white,),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }


}