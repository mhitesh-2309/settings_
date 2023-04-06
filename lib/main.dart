import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:settings_mod/Settings_page.dart';
import 'package:settings_mod/Theme_provider.dart';
import 'package:settings_mod/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    ChangeNotifierProvider<Theme_provider>(
      create: (_) => Theme_provider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<Theme_provider>(
      builder: (context, provider, child) {
        return GetMaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          home: home(),
          debugShowCheckedModeBanner: false,
          themeMode: provider.thememode,
        );
      },
    );
  }
}
