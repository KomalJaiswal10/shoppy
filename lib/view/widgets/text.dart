import 'package:flutter/material.dart';
import 'package:shoppy/service/constant/colors.dart';

class CustomText {
  CustomText({
    required this.text,
    this.color,
  });
  final String text;
  final Color? color;

  Text buttonText() {
    return Text(
      text,
      style: TextStyle(
          color: color ?? AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold),
    );
  }

  Text largeBold() {
    return Text(
      text,
      style: TextStyle(
          color: color ?? AppColors.secondaryBlack,
          fontSize: 28,
          fontWeight: FontWeight.bold),
    );
  }

  Text normal() {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColors.secondaryBlack,
        fontSize: 16,
      ),
    );
  }

  Text normalBold() {
    return Text(
      text,
      style: TextStyle(
          color: color ?? AppColors.secondaryBlack,
          fontSize: 16,
          fontWeight: FontWeight.bold),
    );
  }

  Text medium() {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColors.secondaryBlack,
        fontSize: 18,
      ),
    );
  }
}
