import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:settings_mod/Theme_provider.dart';
import 'package:settings_mod/about_page.dart';
import 'package:settings_mod/home.dart';
import 'package:settings_mod/m_f_a.dart';

class Settings_page extends StatefulWidget {
  const Settings_page({super.key});

  @override
  State<Settings_page> createState() => _Settings_pageState();
}

class _Settings_pageState extends State<Settings_page> {
  bool isteme = false;
  bool perm = false;
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
                            Get.to(home());
                          },
                          child: Icon(Icons.arrow_back)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "Settings",
                        style: GoogleFonts.acme(
                            fontSize: 20, fontWeight: FontWeight.w100),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(
                  m_f_a(),
                );
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Text("M-F-A",
                            style: GoogleFonts.acme(fontSize: 20)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Text(
                      "Dark Theme",
                      style: GoogleFonts.acme(fontSize: 20),
                    ),
                  ),
                  Consumer<Theme_provider>(
                    builder: (context, provider, child) {
                      return Switch(
                        value: provider.isteme,
                        onChanged: (newvalue) {
                          provider.changeTheme(newvalue);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(
                  About_page(),
                );
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Text("About App",
                            style: GoogleFonts.acme(fontSize: 20)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Sign Out",
                  style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
