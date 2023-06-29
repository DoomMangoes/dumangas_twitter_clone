import 'package:dumangas_twitter_clone/constants/constants.dart';
import 'package:dumangas_twitter_clone/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UIConstants{

  static AppBar appBar(){
    

    return AppBar(
    title: SvgPicture.asset(
      AssetsConstants.twitterLogo,
      color: Pallete.blueColor,
      height: 30),
    centerTitle: true,
   );   
  }
}