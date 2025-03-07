
import 'package:flutter/material.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';

class CrisisTile extends StatelessWidget {
  const CrisisTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration:  BoxDecoration(
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
                leading: Text('1',style: TextStyles.font18BlackSemiBold,),
                //Icon(Icons.crisis_alert),
                title: Text(
                  'Food',
                  style: TextStyles.font16BlackSemiBold,
                ),
                subtitle: Text('123 Main st',style: TextStyles.font14LightGrayRegular,),
                trailing: Icon(Icons.pending_actions_rounded),
                children: [
                  Text('data',),
                  Text('\n 2025/3/1 12:00AM')
                ],
              ),
            );
  }
}