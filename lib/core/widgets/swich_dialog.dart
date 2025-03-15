
import 'package:flutter/material.dart';

class SwitchDialog extends StatefulWidget {
  final String title;
  final String description;
  final bool initialValue;
  final Function(bool) onSave;

  const SwitchDialog({
    Key? key,
    required this.title,
    required this.description,
    required this.initialValue,
    required this.onSave,
  }) : super(key: key);

  @override
  _SwitchDialogState createState() => _SwitchDialogState();
}

class _SwitchDialogState extends State<SwitchDialog> {
  late bool switchValue;

  @override
  void initState() {
    super.initState();
    switchValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              widget.description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Resolved", style: TextStyle(fontSize: 16)),
                Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Cancel"),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    widget.onSave(switchValue);
                    Navigator.of(context).pop();
                  },
                  child: const Text("Save"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
