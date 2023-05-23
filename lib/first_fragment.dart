import 'package:flutter/material.dart';

import 'detail_screen.dart';

class FirstFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Column(
        children: <Widget>[
          Text("Hello Fragment 1"),
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodosScreen(todos: [],)),
                );
              }, child:Text("weird"))
        ],
      ),
    );
  }

}