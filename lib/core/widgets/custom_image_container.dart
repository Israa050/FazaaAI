import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/main.dart';

class CustomImageContainer extends StatefulWidget {

  CustomImageContainer({super.key});

  @override
  State<CustomImageContainer> createState() => _CustomImageContainerState();
}

class _CustomImageContainerState extends State<CustomImageContainer> {
  final ImagePicker picker = ImagePicker();

  File? _image;

  void pickImage() async {
    // Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if(image != null){
      setState(() {
        _image = File(image.path);
        myImage = _image;
      }); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pickImage();
      },
      child: DottedBorder(
        color: AppColors.lightBlue,
        strokeWidth: 2,
        borderType: BorderType.RRect,
        radius: Radius.circular(12),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child:(_image==null)?  Icon(
              Icons.add,
              size: 50,
              color: AppColors.lightBlue,
            )
            :
            Image.file(_image!),
    
          ),
        ),
      ),
    );
  }
}
