import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/provider.dart';
import 'package:provider/provider.dart';

class Sebhascreen extends StatefulWidget {
  @override
  State<Sebhascreen> createState() => _SebhascreenState();
}

class _SebhascreenState extends State<Sebhascreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(provider.mode == ThemeMode.light? 'assets/images/background.png':
            'assets/images/dark_bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Image.asset(height: 100,
              'assets/images/sebha_logo1.png',
              alignment: AlignmentGeometry.center,
            ),
            Image.asset(height: 170,
              'assets/images/body_sebha_logo.png',
              alignment: AlignmentGeometry.center,
            ),

            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                'عدد التسبيحات',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(height: 58,width: 52,
                child: ElevatedButton(
                  onPressed: () {
                    OnbuttomClicked();
                    setState(() {

                    });
                  },
                  child: Center(child: Text('$record',style: TextStyle(color: Colors.white),)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFFB7915F),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(height: 25,width: 130,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Center(child: Text('$zikr',style: TextStyle(color: Colors.white),)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFFB7935F),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                  ),
                ),
              ),
            ),
            Text('$finish')
          ],
        ),
      ),
    );

  }

  int record=0;

  String zikr= 'سبحان الله';
  String finish= '';

  void OnbuttomClicked() {
    record += 1;
    finish='';
    if (zikr == 'سبحان الله' && record == 33) {
      zikr = 'الحمد لله';
      record = 0;
    } else if (zikr == 'الحمد لله' && record == 33) {
      zikr = 'الله أكبر';
      record = 0;

    }
    else if (zikr == 'الله أكبر' && record == 33) {

      zikr = 'سبحان الله';
      record = 0;
      finish ='لا إله إلا الله وحده لاشريك له له الملك وله الحمد وهو على كل شئ قدير';

    }

  }

}
