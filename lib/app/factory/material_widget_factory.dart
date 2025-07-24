import 'package:dynamicdesign/app/factory/platform_widget_factory.dart';
import 'package:dynamicdesign/app/models/platform_dialog_action.dart';
import 'package:flutter/material.dart';

class MaterialWidgetFactory implements PlatformWidgetFactory {
  @override
  Widget buildScaffold({required String title, required Widget body}) {
    return Scaffold(appBar: AppBar(title: Text(title)), body: body);
  }

  @override
  Widget buildText(String data, {TextStyle? style, TextAlign? textAlign}) {
    return Text(
      data,
      style: style ?? const TextStyle(fontSize: 16),
      textAlign: textAlign,
    );
  }

  @override
  Widget buildButton({required String label, required VoidCallback onPressed}) {
    return ElevatedButton(onPressed: onPressed, child: Text(label));
  }

  @override
  Widget buildCircularProgressIndicator() {
    return CircularProgressIndicator();
  }

  @override
  void showAlertDialog(
    BuildContext context,
    String title,
    String message, {
    required List<PlatformDialogAction> actions,
  }) {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: Text(title),
            content: Text(message),
            actions:
                actions
                    .map(
                      (action) => TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          action.onPressed();
                        },
                        child: Text(action.label),
                      ),
                    )
                    .toList(),
          ),
    );
  }

  @override
  Widget buildSwitch({
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Switch(value: value, onChanged: onChanged);
  }

  @override
  Widget buildCheckbox({
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Checkbox(
      value: value,
      onChanged: (bool? newValue) {
        if (newValue != null) {
          onChanged(newValue);
        }
      },
    );
  }

  @override
  Widget buildRadio<T>({
    required T value,
    required T groupValue,
    required ValueChanged<T?> onChanged,
    required String label,
  }) {
    return Row(
      children: [
        Radio<T>(value: value, groupValue: groupValue, onChanged: onChanged),
        Text(label),
      ],
    );
  }

  @override
  Future<DateTime?> showDatePickerDialog({
    required BuildContext context,
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
  }) {
    return showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );
  }

  @override
  Future<TimeOfDay?> showTimePickerDialog({
    required BuildContext context,
    required TimeOfDay initialTime,
  }) {
    return showTimePicker(context: context, initialTime: initialTime);
  }
}
