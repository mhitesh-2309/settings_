import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:settings_mod/Theme_provider.dart';
import 'package:settings_mod/m_f_a.dart';
import 'Settings_page.dart';

class About_page extends StatefulWidget {
  const About_page({super.key});

  @override
  State<About_page> createState() => _About_pageState();
}

class _About_pageState extends State<About_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About App"),
      ),
    );
  }
}
