import 'package:flutter/material.dart';
import 'package:salam_hack/core/themes/colors.dart';

class CustomListTile extends StatelessWidget {
  
  final String title;
  final String content;
  final String fotter;
  Icon? topRightIcon;
  Icon? bottomLeftIcon;

  CustomListTile({
    super.key,
    required this.title,
    required this.content,
    required this.fotter,
    this.topRightIcon,
    this.bottomLeftIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: SizedBox(
          height: double.infinity,
          // color: Colors.amber,
          child: Stack(
            children: [
              
              if(topRightIcon != null)
              Align(
                alignment: Alignment.topRight,
                child: topRightIcon,
                // Icon(
                //   Icons.warning_rounded,
                //   color: Colors.red,
                // ),
              ),


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      textAlign: TextAlign.start,
                      content,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                 
                ],
              ),

               Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        fotter,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

              if(bottomLeftIcon != null)
              Align(
                alignment: Alignment.bottomRight,
                child: bottomLeftIcon,
                // Icon(
                //   Icons.check_circle,
                //   color: Colors.lightGreen,
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
