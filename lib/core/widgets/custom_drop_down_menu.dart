
import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  final List<String> items;
  final String hintText;
  final ValueChanged<String?> onChanged;
  final Color backgroundColor;
  final Color borderColor;
  final OutlineInputBorder focusBorder;
  final OutlineInputBorder errorBorder;

  const CustomDropdownMenu({
    Key? key,
    required this.items,
    required this.hintText,
    required this.onChanged,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.grey,
    this.focusBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 2),
    ),
    this.errorBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2),
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
       // borderRadius: BorderRadius.circular(12),
        //border: Border.all(color: borderColor, width: 1.5),
      ),
     // padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(12,),
          ),
          focusedBorder: focusBorder.copyWith(borderRadius: BorderRadius.circular(12,),),
          errorBorder: errorBorder.copyWith(borderRadius:BorderRadius.circular(12,),),
          hintText: hintText,
        ),
        items: items.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: onChanged,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select an option';
          }
          return null;
        },
      ),
    );
  }
}
