import 'package:flutter/material.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';

class CrisisTile extends StatelessWidget {
  String? type;
  String? location;
  int? index;
  String? description;
  String? date;
  bool resolved = false;

  CrisisTile(
      {super.key,
      this.type,
      this.location,
      this.date,
      this.description,
      this.index,
      required this.resolved});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.moreLighterGray,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5.0,
              offset: Offset(0.0, 0.85),
            )
          ]),
      child: ExpansionTile(
        shape: Border(),
        leading: Text(
          index.toString(),
          style: TextStyles.font18BlackSemiBold,
        ),
        //Icon(Icons.crisis_alert),
        title: Text(
          type ?? 'Food',
          style: TextStyles.font16BlackSemiBold,
        ),
        subtitle: Text(
          location ?? '123 Main st',
          style: TextStyles.font14LightGrayRegular,
        ),
        trailing: resolved
            ? Icon(
                Icons.check,
                color: AppColors.darkGreen,
              )
            : Icon(
                Icons.check,
              ),
        children: [
          Text(
            description ?? 'data',
          ),
          Text(
            date ?? '\n2025/3/1 12:00AM',
          )
        ],
      ),
    );
  }
}
