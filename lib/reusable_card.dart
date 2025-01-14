
import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.colour,  this.cardChild,   this .onPress,});

  final Color? colour;
  final  Widget? cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour ?? const Color(0xFF1D1E33)

        ),
        child: cardChild,
      ),
    );
  }
}
