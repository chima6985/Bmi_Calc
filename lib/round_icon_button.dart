import "package:flutter/material.dart";

 class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key,  this.icon,  this .onPressed});

 final IconData? icon;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
      onPressed: onPressed,
      onLongPress: () {
      },
    elevation: 0.0,
    constraints: const  BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ), shape: const CircleBorder() ,
    fillColor: const Color(0XFF4C4F5E),
    child: Icon(icon));
  }
}