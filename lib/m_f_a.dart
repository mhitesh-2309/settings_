import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:settings_mod/Theme_provider.dart';
import 'Settings_page.dart';
import 'package:get/get.dart';

class m_f_a extends StatefulWidget {
  const m_f_a({super.key});

  @override
  State<m_f_a> createState() => _m_f_aState();
}

class _m_f_aState extends State<m_f_a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Text(
                        "Multi Factor Authentication",
                        style: GoogleFonts.acme(
                            fontSize: 20, fontWeight: FontWeight.w100),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
