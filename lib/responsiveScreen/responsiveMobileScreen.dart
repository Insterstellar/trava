import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveMobileScreen extends StatelessWidget {
  const ResponsiveMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final conSWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              height: 200,
                color: Colors.purple[100],
            ),
          ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index){
                return
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    height: 100,
                    color: Colors.red,
                    child:
                    Center(child: Text(conSWidth.toString())),
                ),
                  );
              }),
          )

        ],
      ),
    );
  }
}
