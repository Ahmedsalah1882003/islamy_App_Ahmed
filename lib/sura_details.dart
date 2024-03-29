import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:session6/myThemeData.dart';
import 'package:session6/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
 static const String routeName="SuraDetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
 List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var arges=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadFile(arges.index);
    }
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(image:AssetImage("assets/images/background.png"),
        fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
         title:Text(arges.name,style:Theme.of(context)
           .textTheme.bodyLarge,),
          ),
          body:
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(
                  color: MyThemeData.primaryColor
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(itemBuilder: (context,index){
                 return Center(
                   child: Text(verses[index],
                     textAlign: TextAlign.center,
                     style: Theme.of(context)
                     .textTheme.bodySmall,),
                 );
    },
    itemCount:verses.length,),
              ),
            ),
          ),
        ),
    );
  }

  loadFile(int index)async{
   String file = await rootBundle.
   loadString("assets/files/${index}.txt");
   List<String>lines=file.split("/n");
   print(lines);
   verses=lines;
   setState((){

   });
  }
}
