import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/provider.dart';
import 'package:provider/provider.dart';

class Radioscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(provider.mode == ThemeMode.light? 'assets/images/background.png':
            'assets/images/dark_bg.png'),
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
                color: provider.mode == ThemeMode.light?Colors.black:Colors.white,
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
