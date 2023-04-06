import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:settings_mod/Settings_page.dart';
import 'package:settings_mod/main.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: GoogleFonts.acme(),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Get.to(Settings_page());
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
