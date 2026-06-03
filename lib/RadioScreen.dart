import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Radioscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/radio_image.png'),
            ),
            Text(
              'إذاعة القرآن الكريم',
              style: GoogleFonts.elMessiri(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight(20),
              ),
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_left_sharp, size: 70,color: Color(0XFFB7935F),),

                  Icon(Icons.play_arrow_sharp, size: 70,color: Color(0XFFB7935F),),
                  Icon(Icons.arrow_right_sharp, size: 70,color: Color(0XFFB7935F),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
