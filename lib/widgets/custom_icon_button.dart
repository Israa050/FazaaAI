import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {

  IconData? icon;
  Function()? onTap;
  CustomIconButton({super.key,this.onTap,this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
      ),
    );
  }
}
