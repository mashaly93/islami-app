import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/HadeethDetails.dart';
import 'package:islami/HadeethModel.dart';
import 'package:islami/MythemeData.dart';

import 'l10n/app_localizations.dart';

class Hadethscreen extends StatefulWidget {
  @override
  State<Hadethscreen> createState() => _HadethscreenState();
}

class _HadethscreenState extends State<Hadethscreen> {
  final ScrollController controller = ScrollController();
  List<String> Allhadeeth = [];

  List<Hadeethmodel> allahadeeth = [];

  @override
  Widget build(BuildContext context) {
    LoadHadeeth();
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.islami,
                style: GoogleFonts.elMessiri(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset('assets/images/hadeth_logo.png'),
              Divider(thickness: 2, color: Mythemedata.primary),
              Text(
                AppLocalizations.of(context)!.ahadeeth,
                style: GoogleFonts.elMessiri(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(thickness: 2, color: Mythemedata.primary),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  controller: controller,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              Hadeethdetails.routeName,
                              arguments: allahadeeth[index],
                            );
                          },
                          child: Text(
                            allahadeeth[index].name,
                            style: GoogleFonts.elMessiri(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: allahadeeth.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void LoadHadeeth() async {
    String Ahadeeth = await rootBundle.loadString('assets/files/ahadeth.txt');

    Allhadeeth = Ahadeeth.trim().split('#');
    for (int i = 0; i < Allhadeeth.length; i++) {
      String hadeethone = Allhadeeth[i];
      List<String> hadeethverses = hadeethone.trim().split('\n');
      String title = hadeethverses[0];

      hadeethverses.removeAt(0);
      List<String> content = hadeethverses;
      Hadeethmodel hadeethmodel = Hadeethmodel(name: title, Hadeeth: content);
      allahadeeth.add(hadeethmodel);
    }
    setState(() {});
  }
}
