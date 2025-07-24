import 'package:dynamicdesign/app/models/platform_dialog_action.dart';
import 'package:flutter/material.dart';

abstract class PlatformWidgetFactory {
  Widget buildScaffold({required String title, required Widget body});

  Widget buildText(String data, {TextStyle? style, TextAlign? textAlign});

  Widget buildButton({required String label, required VoidCallback onPressed});

  Widget buildCircularProgressIndicator();

  void showAlertDialog(
    BuildContext context,
    String title,
    String message, {
    required List<PlatformDialogAction> actions,
  });

  Widget buildSwitch({
    required bool value,
    required ValueChanged<bool> onChanged,
  });

  Widget buildCheckbox({
    required bool value,
    required ValueChanged<bool> onChanged,
  });

  Widget buildRadio<T>({
    required T value,
    required T groupValue,
    required ValueChanged<T?> onChanged,
    required String label,
  });

  Future<DateTime?> showDatePickerDialog({
    required BuildContext context,
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
  });

  Future<TimeOfDay?> showTimePickerDialog({
    required BuildContext context,
    required TimeOfDay initialTime,
  });
}
