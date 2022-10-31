import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


Widget cacheImage(String url,{required BoxFit? boxFit,required double width,required double height,alignment = Alignment.center,}) {
  return CachedNetworkImage(
    alignment: alignment,
    fit:boxFit ?? BoxFit.contain,
    imageUrl: url,
    width: width,
    height: height,
    placeholder: (BuildContext context,String url){
      return Image.asset("image/lisen_lancher.png",
        width: 100,height: 200,
        alignment: Alignment.topCenter,
      );
    },
    errorWidget: (BuildContext context,String url,dynamic error){
      return Image.asset("image/lisen_lancher.png",
        width: 100,height: 200,
        alignment: Alignment.topCenter,
      );
    },
  );

}