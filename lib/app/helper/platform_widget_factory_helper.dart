import 'package:dynamicdesign/app/factory/platform_widget_factory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension PlatformWidgetFactoryHelper on BuildContext {
  PlatformWidgetFactory get factory => read<PlatformWidgetFactory>();
}
