import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:settings_mod/Theme_provider.dart';
import 'Settings_page.dart';

class m_f_a extends StatefulWidget {
  const m_f_a({super.key});

  @override
  State<m_f_a> createState() => _m_f_aState();
}

class _m_f_aState extends State<m_f_a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Factor Auth"),
      ),
    );
  }
}
