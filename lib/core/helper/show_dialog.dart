
import 'package:flutter/material.dart';
import 'package:salam_hack/core/widgets/custom_dialog.dart';
import 'package:salam_hack/core/widgets/swich_dialog.dart';

void showCustomDialog(BuildContext context, {required String title, required String description, required bool isSuccess}) {
  showDialog(
    context: context,
    builder: (context) => CustomDialog(
      title: title,
      description: description,
      icon: isSuccess ? Icons.check_circle : Icons.error,
      iconColor: isSuccess ? Colors.green : Colors.red,
    ),
  );
}


void showSwitchDialog(BuildContext context, {required String title, required String description, required bool initialValue, required Function(bool) onSave}) {
  showDialog(
    context: context,
    builder: (context) => SwitchDialog(
      title: title,
      description: description,
      initialValue: initialValue,
      onSave: onSave,
    ),
  );
}