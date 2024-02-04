import 'package:flutter/cupertino.dart';

class ResponsivScreen extends StatelessWidget {

  final Widget mobileScreen;
  final Widget DesktopScreen;
  ResponsivScreen({Key? key, required this.mobileScreen, required this.DesktopScreen}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final constWidth= MediaQuery.of(context).size.width;
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth<600){
            return mobileScreen;
          }else{
            return DesktopScreen;
          }
        });
  }
}
