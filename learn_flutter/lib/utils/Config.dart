import 'package:flutter/widgets.dart';

class Config
{
  static double width;
  static double height;
  static MediaQueryData _mediaQueryData;

  void init(BuildContext context)
  {
    _mediaQueryData = MediaQuery.of(context);
    width=_mediaQueryData.size.width;
    height=_mediaQueryData.size.height;
  }
  
  


}