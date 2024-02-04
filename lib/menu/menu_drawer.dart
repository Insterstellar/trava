import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trava/pages/about_page.dart';
import 'package:trava/pages/dashboard_trava.dart';
import 'package:trava/pages/statics_page.dart';
import 'package:trava/widgets/my_toast.dart';
import 'package:trava/pages/favorite_dart.dart';


import '../data/my_colors.dart';
import '../widgets/my_text.dart';

class MenuDrawerAdminRoute extends StatefulWidget {

  MenuDrawerAdminRoute();

  @override
  MenuDrawerAdminRouteState createState() => new MenuDrawerAdminRouteState();
}


class MenuDrawerAdminRouteState extends State<MenuDrawerAdminRoute> {

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late BuildContext context;
  bool isSwitched1 = true;
  int _index=0;

  final screens=[
    Dashboard(),
    AboutAppRoute(),
    StatsScreen(),
    FavoritesPage()


  ];

  void onDrawerItemClicked(int index){
    Navigator.pop(context);
    setState(() {
      _index=index;
    });

   // MyToast.show(name+" Selected", context);
  //  in
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      scaffoldKey.currentState!.openDrawer();
    });
  }



  @override
  Widget build(BuildContext context) {
    print(screens[0].toString());
    this.context = context;
    Widget widget =  Scaffold(
      key: scaffoldKey, backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
        ), title: const Text("T r a v a"),
        /*shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)
            
          )
              
        ),*/

        backgroundColor: Colors.deepOrange[300],
      ),
      drawer: Container(width: 240, height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Container(width: 10),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage("https://trava-stream.firebaseapp.com/assets/images/trava_logo_tiny.png"),
                    ),
                    Container(width: 20),
                    Text("T R A V A", style: MyText.body2(context)!.copyWith(
                        color: Colors.blueGrey[800], fontWeight: FontWeight.w500
                    )),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.power_settings_new, size: 20, color: Colors.deepOrange[300]),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              const Divider(height: 0),
              Container(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text("Main", style: MyText.body2(context)!.copyWith(color: MyColors.grey_90)),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.dns, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Dashboard", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){
                    onDrawerItemClicked(0);
                   // Navigator.push(
                   //   context,
                   //   MaterialPageRoute(builder: (context) => const Dashboard()),
                   // );
                    
                    //Navigator.of(context).push(MaterialPageRoute(builder:(context) => const Dashboard(),));

                    },
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.notifications_outlined, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Notification", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  trailing: Switch(
                    value: isSwitched1, onChanged: (value) {setState(() { isSwitched1 = value; });},
                    activeColor: Colors.red,
                    inactiveThumbColor: Colors.grey,
                  ),
                  onTap: (){onDrawerItemClicked(1);},
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  minVerticalPadding: 0,
                  leading: Icon(Icons.graphic_eq_outlined, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Statistics", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder:(context) => const Dashboard(),));
                   // Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const Dashboard(),));
                    onDrawerItemClicked(2);

                  },
                ),
              ),

              Container(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text("More", style: MyText.body2(context)!.copyWith(color: MyColors.grey_90)),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.favorite_border, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Favorites", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){
                    onDrawerItemClicked(3);
                    },
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.data_usage, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Report", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  trailing: Icon(Icons.chevron_right, color: Colors.deepOrange[300]),
                  onTap: (){
                   // onDrawerItemClicked(5);

                    },
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  minVerticalPadding: 0,
                  leading: Icon(Icons.route, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Route", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){
                   // onDrawerItemClicked(6);
                    },
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  minVerticalPadding: 0,
                  leading: Icon(Icons.gps_not_fixed, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Gps", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){
                   // onDrawerItemClicked(7);
                    },
                ),
              ),

              Container(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text("Other", style: MyText.body2(context)!.copyWith(color: MyColors.grey_90)),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.policy, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Terms and Conditions", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){
                    //onDrawerItemClicked(8);
                    },
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.info_outline, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("About", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){
                   // onDrawerItemClicked(9);
                    },
                ),
              ),
            ],
          ),
        ),
      ),
     // body: IncludeDrawerContent.get(context),),
      body: screens[_index],

    );
    return widget;
  }
}

