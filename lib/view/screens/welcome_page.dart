import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soul_space/view/screens/dashboard_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Gradient background container
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.49, 1.0],
              colors: [Color(0xFF11131F), Color(0xFF103C90)],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent, // Make scaffold transparent
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Text(
                'Welcome to SoulSpace!',
                style: GoogleFonts.oxanium(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Unlock inner peace step by step.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bungee(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 28,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Image.asset(
                  'assets/images/bg.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 50.0),
          alignment: Alignment.bottomCenter,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push( MaterialPageRoute(
                builder: (context) => const DashboardPage(),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Login',
                style: GoogleFonts.bungee(
                color: Colors.white,
                fontSize: 18
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
