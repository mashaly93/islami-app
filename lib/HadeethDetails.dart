import 'package:flutter/material.dart';
import 'package:islami/HadeethModel.dart';

class Hadeethdetails extends StatelessWidget {
  const Hadeethdetails({super.key});
  static const String routeName ='Hadeethdetails';

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as Hadeethmodel;
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
            child: Text(arg.name, style: TextStyle(color: Colors.black)),
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
                  child: Text('${arg.Hadeeth[index]}')));
            },
            itemCount: arg.Hadeeth.length,
          ),
        ),
      ),
    );

  }
}
