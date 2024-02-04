import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trava/data/my_colors.dart';
import 'package:trava/data/my_strings.dart';
import 'package:trava/widgets/my_text.dart';

class AboutAppRoute extends StatefulWidget {

  AboutAppRoute();

  @override
  AboutAppRouteState createState() => new AboutAppRouteState();
}


class AboutAppRouteState extends State<AboutAppRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     /* appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
          title: Text("About", style: TextStyle(color: MyColors.grey_80)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: MyColors.grey_80),
            onPressed: () {Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search, color: MyColors.grey_80),
              onPressed: () {},
            )
          ]
      ),*/
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Trava", style: MyText.display1(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w300)),
            Container(height: 5),
            Container(width: 120, height: 3, color: Colors.deepOrange[300]),
            Container(height: 15),
            Text("Version", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
            Text("1.0", style: MyText.medium(context).copyWith(color: MyColors.grey_90)),
            Container(height: 15),
            Text("Last Update", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
            Text("Initial Update", style: MyText.medium(context).copyWith(color: MyColors.grey_90)),
            Container(height: 25),
           Text(MyStrings.medium_lorem_ipsum, style: MyText.medium(context).copyWith(color: MyColors.grey_90)),
            Container(height: 25),
            Text("Vilkår og betingelser", style: MyText.medium(context).copyWith(color: MyColors.grey_90)),
          ],
        ),
      ),
    );
  }
}

