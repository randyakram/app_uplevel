import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_app_ui/page/main_page.dart';

import '../utils.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 200.0,
                ),
                const Icon(
                  CupertinoIcons.arrow_up_circle,
                  size: 100.0,
                  color: black,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "UpLevel ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.green,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Tingkatkan Keahlian",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: grey,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Daftar",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: yellow,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  height: 60,
                  width: 160,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(64.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()),
                      );
                    },
                    child: Text(
                      "Masuk",
                      style: GoogleFonts.montserrat(
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Lupa Akun?",
                    style: GoogleFonts.montserrat(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      color: Colors.green,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Otp
class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.1,
      child: Form(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 65,
            height: 65,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: textFormFieldDecoration,
              cursorColor: Colors.deepPurpleAccent,
              textAlign: TextAlign.center,
              cursorHeight: 30.0,
              maxLines: 1,
              style: font,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            width: 65,
            height: 65,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: textFormFieldDecoration,
              cursorColor: Colors.deepPurpleAccent,
              textAlign: TextAlign.center,
              cursorHeight: 30.0,
              maxLines: 1,
              style: font,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            width: 65,
            height: 65,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: textFormFieldDecoration,
              cursorColor: Colors.deepPurpleAccent,
              textAlign: TextAlign.center,
              cursorHeight: 30.0,
              maxLines: 1,
              style: font,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            width: 65,
            height: 65,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusManager.instance.primaryFocus?.unfocus();
                }
              },
              decoration: textFormFieldDecoration,
              cursorColor: Colors.deepPurpleAccent,
              textAlign: TextAlign.center,
              cursorHeight: 30.0,
              maxLines: 1,
              style: font,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
        ],
      )),
    );
  }
}
