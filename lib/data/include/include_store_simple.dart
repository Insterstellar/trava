import 'package:flutter/material.dart';
import 'package:trava/widgets/my_text.dart';

class IncludeStoreSimple {
  static Widget get(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
        child: Column(
          children: <Widget>[
            Container(height: 15),
            Row(
              children: <Widget>[
                Container(width: 3),
                Text(
                  "COUNTIES",
                  style: MyText.medium(context).copyWith(color: Colors.grey[800]),
                ),
              ],
            ),
            Container(height: 10),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/direction.png',
                        height: 120, width: double.infinity, fit: BoxFit.cover,
                      ),
                      Container(height: 15),
                      Row(
                        children: <Widget>[
                          Container(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Bergen", maxLines: 1, overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[900])
                                ),
                                /*Text("Adipiscing", style: TextStyle(
                                    fontSize: 16, color: Colors.grey[500]
                                )),*/
                              ],
                            ),
                          ),
                          Container(width: 10),
                        ],
                      ),
                    ],
                      )
                  ),
                );

              },


            )


          ],
        ),
      ),
    );
    //return widget;
  }

}