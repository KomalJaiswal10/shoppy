import 'package:flutter/material.dart';
import 'package:shoppy/constant/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.isExpand = false});
  final String text;
  final VoidCallback onTap;
  final bool isExpand;

  @override
  Widget build(BuildContext context) {
    bool isPressed = false;
    return StatefulBuilder(builder: (context, internalState) {
      return GestureDetector(
          onTapUp: (value) {
            isPressed = false;
            internalState(() {});
          },
          onTapDown: (value) {
            isPressed = true;
            internalState(() {});
          },
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
            decoration: BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: isPressed
                    ? [
                        BoxShadow(
                            blurRadius: 5.0,
                            offset: const Offset(1, 5),
                            color: AppColors.black.withOpacity(.2))
                      ]
                    : []),
            child: Center(child: Text(text)),
          ));
    });
  }
}
