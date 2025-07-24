import 'package:dynamicdesign/app/helper/platform_widget_factory_helper.dart';
import 'package:dynamicdesign/app/models/platform_dialog_action.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchValue = true;
  bool checkboxAValue = true;
  bool checkboxBValue = false;
  String _selected = 'A';
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return context.factory.buildScaffold(
      title: 'Tela Inicial',
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                context.factory.buildButton(
                  label: 'AlertDialog',
                  onPressed:
                      () => context.factory.showAlertDialog(
                        context,
                        'AlertDialog',
                        'Esse é um AlertDialog',
                        actions: [
                          PlatformDialogAction(
                            label: 'Cancel',
                            onPressed: () {},
                          ),
                          PlatformDialogAction(
                            label: 'Ok',
                            onPressed: () {},
                            isDefault: true,
                          ),
                        ],
                      ),
                ),
                Column(
                  children: [
                    context.factory.buildText(
                      'Esse é um Switch',
                      style: TextStyle(color: Colors.black),
                    ),
                    context.factory.buildSwitch(
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                    ),
                  ],
                ),

                Column(
                  children: [
                    context.factory.buildText(
                      'Esse é um CheckBox',
                      style: TextStyle(color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        context.factory.buildCheckbox(
                          value: checkboxAValue,
                          onChanged:
                              (value) => {
                                setState(() {
                                  checkboxAValue = value;
                                }),
                              },
                        ),
                        context.factory.buildCheckbox(
                          value: checkboxBValue,
                          onChanged:
                              (value) => {
                                setState(() {
                                  checkboxBValue = value;
                                }),
                              },
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    context.factory.buildText(
                      'Esse é um Radio',
                      style: TextStyle(color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        context.factory.buildRadio<String>(
                          value: 'A',
                          groupValue: _selected,
                          onChanged:
                              (val) => setState(() => _selected = val ?? ''),
                          label: 'Opção A',
                        ),
                        context.factory.buildRadio<String>(
                          value: 'B',
                          groupValue: _selected,
                          onChanged:
                              (val) => setState(() => _selected = val ?? ''),
                          label: 'Opção B',
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    context.factory.buildButton(
                      label: 'DatePicker',
                      onPressed: () async {
                        final date = await context.factory.showDatePickerDialog(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );

                        if (date != null) {
                          setState(() {
                            _selectedDate = date;
                          });
                        }
                      },
                    ),
                    context.factory.buildText(
                      _selectedDate == null
                          ? 'Selecione uma data'
                          : 'Selecionado: ${_selectedDate!.toLocal().toString().split(' ')[0]}',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),

                Column(
                  children: [
                    context.factory.buildButton(
                      label: 'TimePicker',
                      onPressed: () async {
                        final time = await context.factory.showTimePickerDialog(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );

                        if (time != null) {
                          setState(() {
                            _selectedTime = time;
                          });
                        }
                      },
                    ),
                    context.factory.buildText(
                      _selectedTime == null
                          ? 'Selecione um horário'
                          : 'Selecionado: ${_selectedTime!.format(context)}',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
