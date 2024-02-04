import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trava/data/include/include_store_simple.dart';
import 'package:trava/data/my_colors.dart';
import 'package:trava/widgets/my_text.dart';

class FavoritesPage extends StatefulWidget {

  FavoritesPage();

  @override
  FavoritesPageState createState() => new FavoritesPageState();
}


class FavoritesPageState extends State<FavoritesPage> {

  bool isSwitched1 = true;
  bool finishLoading = true;
  final TextEditingController inputController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

