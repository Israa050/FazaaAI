
import 'package:flutter/material.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';

class SafetyCheckDialog extends StatelessWidget {

  final String crisisName;

  const SafetyCheckDialog({Key? key, required this.crisisName}) : super(key: key);

  void _submitStatus(BuildContext context, bool isSafe) async {
    
    isSafe?
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Thank you for updating your status."),
            backgroundColor: Colors.green,
          ),
        ):
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Failed to update status. Please try again."),
          backgroundColor: Colors.red,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.shield, color: AppColors.primaryBlue, size: 50),
            SizedBox(height: 10),
            Text(
              "Daily Safety Check",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Are you safe today during crisisName?"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: ()=> _submitStatus(context,true),
                  icon: Icon(Icons.check,color: Colors.white,),
                  label: Text("I’m Safe",style: TextStyles.font14GreyRegular.copyWith(color: Colors.white,),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                ),
                ElevatedButton.icon(
                  onPressed: () => _submitStatus(context, false),
                  icon: Icon(Icons.close,color: Colors.white,),
                  label: Text("I’m Not Safe",style: TextStyles.font14GreyRegular.copyWith(color: Colors.white,),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}

// Function to show the safety check dialog
void showSafetyCheckDialog(BuildContext context, String crisisName) {
  showDialog(
    context: context,
    builder: (context) => SafetyCheckDialog(crisisName: crisisName),
  );
}