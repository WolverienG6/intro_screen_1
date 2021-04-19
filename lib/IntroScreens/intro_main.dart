import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreens extends StatefulWidget {
  @override
  _IntroScreensState createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          rawPages: [introPage1(), introPage2(), introPage3()],
          showNextButton: true,
          dotsDecorator: DotsDecorator(
              activeColor: Colors.redAccent,
              activeSize: Size.square(12),
              size: Size.square(12)),
          next: Text(
            "NEXT",
            style: GoogleFonts.oswald(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.redAccent,
            ),
          ),
          nextColor: Colors.redAccent,
          showSkipButton: false,
          doneColor: Colors.redAccent,
          done: Text(
            "GOT IT",
            style: GoogleFonts.oswald(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.redAccent,
            ),
          ),
          onDone: () {}, // Add further code Here
        ),
      ),
    );
  }
}

Widget introPage2() {
  return SafeArea(
    child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "INSTANT DELIVERY",
            style: GoogleFonts.fredokaOne(fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Lottie.asset('assets/delivery.json'),
          SizedBox(
            height: 30,
          ),
          Text(
            "Order easy,fast and safe products from your local store",
            textAlign: TextAlign.center,
            style:
                GoogleFonts.hanaleiFill(fontSize: 30, color: Colors.redAccent),
          ),
        ],
      ),
    ),
  );
}

Widget introPage3() {
  return SafeArea(
    child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "LEARN TO COOK",
            style: GoogleFonts.fredokaOne(fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Lottie.asset('assets/cooking.json'),
          SizedBox(
            height: 30,
          ),
          Text(
            "Learn to cook new dishes for your loved ones with our exciting feature",
            textAlign: TextAlign.center,
            style:
                GoogleFonts.hanaleiFill(fontSize: 30, color: Colors.redAccent),
          ),
        ],
      ),
    ),
  );
}

Widget introPage1() {
  return SafeArea(
    child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "CHAT",
            style: GoogleFonts.fredokaOne(fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          Lottie.asset('assets/chat.json', height: 350),
          SizedBox(
            height: 40,
          ),
          Text(
            "Chat directly with your closest Sellers",
            textAlign: TextAlign.center,
            style:
                GoogleFonts.hanaleiFill(fontSize: 30, color: Colors.redAccent),
          ),
        ],
      ),
    ),
  );
}
