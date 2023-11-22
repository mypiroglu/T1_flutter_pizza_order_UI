import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
// Bunlar isimlendirmeler mülakatlarda sorarlar
//left - start - leading
// right - end -trailing
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var d = AppLocalizations.of(context);
    return Scaffold(
    appBar: AppBar(title:Text("Pizza",style: TextStyle(color: textColor1,fontFamily: "Pacifico",fontSize: 32),),
      backgroundColor: mainColor,
      centerTitle: true,
    ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(d!.pizzaTitle, style: TextStyle(fontSize: 24, color: mainColor,fontFamily: "Pacifico"),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.asset("images/pizza.png",width: 200,height: 200,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(content: d.cheeseText),
                Chip(content: d.sausageText),
                Chip(content: d.oliveText),
                Chip(content: d.pepperText),
              ],
            ),
          ),
          Column(
            children: [
              Text(d.deliveryTime,style: TextStyle(fontSize: 20,color: textColor2,fontWeight: FontWeight.bold),),
              Text(d.deliveryTitle,style: TextStyle(fontSize: 20,color: mainColor,fontWeight: FontWeight.bold),),
              Text(d.pizzaContent,
                style: TextStyle(fontSize: 20,color: textColor2),textAlign: TextAlign.center,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(d.price,style: TextStyle(fontSize: 44,color: mainColor,fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox( width: 200,height: 50,
                  child: TextButton(onPressed: (){},
                    child:Text(d.buttonText, style: TextStyle(color: textColor1,fontSize: 18),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: mainColor,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
class Chip extends StatelessWidget {
  String content;

  Chip({required this.content});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(content,style: TextStyle(color: textColor1),),
      style: TextButton.styleFrom(backgroundColor: mainColor),
    );
  }
}
