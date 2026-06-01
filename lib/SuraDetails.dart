import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/SuraModel.dart';

class Suradetails extends StatefulWidget {
  static const String routeName = 'Suradetails';

  @override
  State<Suradetails> createState() => _SuradetailsState();
}

class _SuradetailsState extends State<Suradetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Suramodel;
    if (verses.isEmpty) {
      loadfile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(args.Name, style: TextStyle(color: Colors.black)),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Card(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsetsDirectional.only(start: 15),
          child: ListView.separated(separatorBuilder: (context, index) {
            return Divider(thickness: 1,indent: 40,endIndent: 40,);
          },
            itemBuilder: (context, index) {
              return Center(child: Directionality(textDirection: TextDirection.ltr,
                  child: Text('${verses[index]}(${index+1})')));
            },
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  void loadfile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> ayat = sura.split('\n');
    verses = ayat;
    setState(() {});
  }
}
