import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 39, top: 150),
                    child: Image(
                      image: AssetImage('assets/icon.png'),
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 145, left: 10),
                    child: Column(
                      children: [
                        Text(
                          'BOOTASTIC',
                          style: GoogleFonts.rubik(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 104, 180, 243)),
                        ),
                        Text(
                          'FITNESS',
                          style: GoogleFonts.rubik(
                              fontSize: 25,
                              color: Color.fromARGB(255, 104, 180, 243)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 50),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Enter Your Name'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Your Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 91, 164, 224),
                  foregroundColor: Colors.black,
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: const Icon(
                    Icons.lock_sharp,
                    color: Colors.white,
                    size: 25,
                  ),
                  label: Text(
                    'LOGIN',
                    style: GoogleFonts.actor(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 235, top: 6),
                child: Text(
                  'forgot password?',
                  style: GoogleFonts.averiaSansLibre(
                      fontSize: 18,
                      color: Colors.blue,
                      decoration: TextDecoration.underline),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'Or Login using',
                  style: GoogleFonts.albertSans(
                      fontSize: 25,
                      color: Color.fromARGB(255, 104, 180, 243),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 85,top: 25),
                child: Row(
                  children: [
                    FlutterSocialButton(
                      onTap: () {},
                      buttonType: ButtonType.google,
                      mini: true,
                    ),
                    const SizedBox(width: 15,),
                    FlutterSocialButton(
                      onTap: () {},
                      buttonType: ButtonType.linkedin,
                      mini: true,
                    ),
                    const SizedBox(width: 15,),
                    FlutterSocialButton(
                      onTap: () {},
                      buttonType: ButtonType.facebook,
                      mini: true,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
