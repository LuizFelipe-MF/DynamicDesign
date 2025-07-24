import 'package:flutter/material.dart';

class PlatformDialogAction {
  final String label;
  final VoidCallback onPressed;
  final bool isDefault;

  PlatformDialogAction({
    required this.label,
    required this.onPressed,
    this.isDefault = false,
  });
}
