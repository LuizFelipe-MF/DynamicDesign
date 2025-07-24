import 'package:dynamicdesign/app/factory/cupertino_widget_factory.dart';
import 'package:dynamicdesign/app/factory/material_widget_factory.dart';
import 'package:dynamicdesign/app/factory/platform_widget_factory.dart';
import 'package:dynamicdesign/app/pages/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic App',
      theme: ThemeData(
        useMaterial3: true,
        platform: defaultTargetPlatform,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      builder: (context, child) {
        final platform = Theme.of(context).platform;

        final factory =
            platform == TargetPlatform.iOS
                ? CupertinoWidgetFactory()
                : MaterialWidgetFactory();

        return Provider<PlatformWidgetFactory>.value(
          value: factory,
          child: child!,
        );
      },
      home: const HomePage(),
    );
  }
}
