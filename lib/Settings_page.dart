import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:settings_mod/Theme_provider.dart';

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
      appBar: AppBar(
        title: Text(
          "Settings",
          style: GoogleFonts.acme(),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notification",
                    style: GoogleFonts.acme(fontSize: 20),
                  ),
                  Switch(
                      value: perm,
                      onChanged: (newperm) {
                        setState(() {
                          perm = newperm;
                        });
                      })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("M-F-A", style: GoogleFonts.acme(fontSize: 20)),
                  Icon(Icons.arrow_forward_ios, color: Colors.black)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dark Theme",
                    style: GoogleFonts.acme(fontSize: 20),
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
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("About App", style: GoogleFonts.acme(fontSize: 20)),
                  Icon(Icons.arrow_forward_ios, color: Colors.black)
                ],
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
