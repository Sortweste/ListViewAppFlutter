import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  final names = ['Lia', 'Sort', 'Lan', 'Luan', 'Vans'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ListView Example'),
        ),
        body: ListView(
          children: _arrayToList(),
        ),
      ),
    );
  }

  List<Widget> _arrayToList() => names.map((name){
    return Column(
      children: <Widget>[
          ListTile(
            title: Text(name),
            subtitle: Text('Status: Active!'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider(),
      ],
    );
  }).toList();


    /*for(String name in names){
        final tempWidget = ListTile(
          title: Text(name),
        );
        list..add(tempWidget)
          ..add(Divider());
    }*/

}