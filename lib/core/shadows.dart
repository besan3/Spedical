import 'package:flutter/material.dart';
import 'package:spadical/core/colors.dart';

class AppShadows{
  static const  BoxShadow shadow1= BoxShadow(
    offset: Offset(0, 16),
    blurRadius: 11.5,
    spreadRadius: 0,
    color: Color.fromRGBO(45, 121, 159, 0.0196),
  );
  static const  BoxShadow shadow2= BoxShadow(
    color: Color.fromRGBO(47, 195, 161, 0.2627),
    offset: Offset(0, 5),
    blurRadius: 10,
    spreadRadius: 0,
  );
  static const  BoxShadow shadow3= BoxShadow(
    color: Color.fromRGBO(49, 67, 137, 0.14902),
    offset: Offset(0, 3),
    blurRadius: 3.5,
    spreadRadius: 0,
  );

}