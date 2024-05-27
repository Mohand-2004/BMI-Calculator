import 'package:flutter/material.dart';
class ColorTheme{
   Color? _backgroundColor;
   Color? _iconcolor;
   Color? _bordercolor;
  ColorTheme({required Color backgroundColor,required Color iconcolor,bordercolor}){
    _backgroundColor = backgroundColor;
    _iconcolor = iconcolor;
    if(bordercolor == null){
      _bordercolor = backgroundcolor;
    }
    else{
    _bordercolor = bordercolor;
    }
  }
  Color? get backgroundcolor => _backgroundColor;
  Color? get iconcolor => _iconcolor;
  Color? get bordercolor => _bordercolor;
}