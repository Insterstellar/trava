import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trava/data/include/include_store_simple.dart';
import 'package:trava/data/my_colors.dart';
import 'package:trava/widgets/my_text.dart';

class Dashboard extends StatefulWidget {

  Dashboard();

  @override
  DashboardState createState() => new DashboardState();
}


class DashboardState extends State<Dashboard> {

  bool isSwitched1 = true;
  bool finishLoading = true;
  final TextEditingController inputController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_3,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarBrightness: Brightness.dark
              ),
              expandedHeight: 100,
              floating: false, pinned: true,
              backgroundColor: Colors.deepOrange[300],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(25),
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  alignment: Alignment.bottomCenter,
                  constraints: BoxConstraints.expand(height: 80),
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 1,
                    child: Row(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.search, color: Colors.grey[600]), onPressed: (){
                          inputController.clear();
                          setState(() {});
                        }),
                        Expanded(
                          child: TextField(maxLines: 1,
                            controller: inputController,
                            style: TextStyle(color: Colors.grey[600], fontSize: 18),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Locations',
                              hintStyle: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              automaticallyImplyLeading: false,
            ),
          ];
        },
        body: IncludeStoreSimple.get(context),
      ),
    );
  }
}

