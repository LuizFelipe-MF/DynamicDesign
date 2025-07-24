import 'package:dynamicdesign/app/factory/platform_widget_factory.dart';
import 'package:dynamicdesign/app/models/platform_dialog_action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoWidgetFactory implements PlatformWidgetFactory {
  @override
  Widget buildScaffold({required String title, required Widget body}) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text(title)),
      child: SafeArea(child: body),
    );
  }

  @override
  Widget buildText(String data, {TextStyle? style, TextAlign? textAlign}) {
    return DefaultTextStyle(
      style: style ?? const TextStyle(fontSize: 16, fontFamily: '.SF Pro Text'),
      child: Text(data, textAlign: textAlign),
    );
  }

  @override
  Widget buildButton({required String label, required VoidCallback onPressed}) {
    return CupertinoButton.filled(onPressed: onPressed, child: Text(label));
  }

  @override
  Widget buildCircularProgressIndicator() {
    return CupertinoActivityIndicator();
  }

  @override
  void showAlertDialog(
    BuildContext context,
    String title,
    String message, {
    required List<PlatformDialogAction> actions,
  }) {
    showCupertinoDialog(
      context: context,
      builder:
          (_) => CupertinoAlertDialog(
            title: Text(title),
            content: Text(message),
            actions:
                actions
                    .map(
                      (action) => CupertinoDialogAction(
                        isDefaultAction: action.isDefault,
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
    return CupertinoSwitch(value: value, onChanged: onChanged);
  }

  @override
  Widget buildCheckbox({
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Icon(
        value ? CupertinoIcons.check_mark_circled_solid : CupertinoIcons.circle,
        color: CupertinoColors.activeBlue,
      ),
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
        CupertinoRadio<T>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        const SizedBox(width: 8),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontFamily: '.SF Pro Text',
          ),
          child: Text(label),
        ),
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
    DateTime selectedDate = initialDate;

    return showCupertinoModalPopup<DateTime>(
      context: context,
      builder:
          (_) => Container(
            height: 300,
            color: CupertinoColors.systemBackground.resolveFrom(context),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: CupertinoDatePicker(
                    initialDateTime: initialDate,
                    minimumDate: firstDate,
                    maximumDate: lastDate,
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (DateTime date) {
                      selectedDate = date;
                    },
                  ),
                ),
                CupertinoButton(
                  child: const Text('Confirmar'),
                  onPressed: () {
                    Navigator.of(context).pop(selectedDate);
                  },
                ),
              ],
            ),
          ),
    );
  }

  @override
  Future<TimeOfDay?> showTimePickerDialog({
    required BuildContext context,
    required TimeOfDay initialTime,
  }) async {
    Duration selectedDuration = Duration(
      hours: initialTime.hour,
      minutes: initialTime.minute,
    );

    return await showCupertinoModalPopup<TimeOfDay>(
      context: context,
      builder:
          (_) => Container(
            height: 300,
            color: CupertinoColors.systemBackground.resolveFrom(context),
            child: Column(
              children: [
                Expanded(
                  child: CupertinoTimerPicker(
                    mode: CupertinoTimerPickerMode.hm,
                    initialTimerDuration: selectedDuration,
                    onTimerDurationChanged: (Duration newDuration) {
                      selectedDuration = newDuration;
                    },
                  ),
                ),
                CupertinoButton(
                  child: const Text('Confirmar'),
                  onPressed: () {
                    Navigator.of(context).pop(
                      TimeOfDay(
                        hour: selectedDuration.inHours,
                        minute: selectedDuration.inMinutes % 60,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
    );
  }
}
