import 'package:flutter/material.dart';
import 'package:islami/SuraModel.dart';

import 'SuraDetails.dart';
import 'package:flutter/services.dart';

class QuranScreen extends StatefulWidget {
  @override
  State<QuranScreen> createState() => _QuranScreenState();
}


class _QuranScreenState extends State<QuranScreen> {
  List<String> SuraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس",
  ];

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
        child: SafeArea(
          child: Column(
            children: [
              Text('إسلامي', style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 20),

              Image.asset('assets/images/quran_image.png', height: 120),

              const SizedBox(height: 20),

              Divider(thickness: 2, color: Colors.brown),
              Text(
                'Sura Names',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Divider(thickness: 2, color: Colors.brown),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Center(
                      child: InkWell(onTap: () async {
                        Navigator.pushNamed(context,
                            Suradetails.routeName,arguments: Suramodel(SuraNames[index], index));

                        setState(() {

                        });
                      },
                        child: Text(
                          SuraNames[index],
                          style: TextStyle(
                            fontSize: 15,

                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: SuraNames.length, separatorBuilder: (BuildContext context, int index) {
                    return Divider(height: 1,endIndent: 150,indent: 150,thickness: 1,color: Colors.black,);
                },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
