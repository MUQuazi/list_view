import 'package:flutter/material.dart';
import 'package:list_view/list.dart';

void main() {
  runApp(const MaterialApp(
    home: MyListView() ,
  ));
}

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {

  List<CustomListView> list = [
   CustomListView("moin","uddin"),
   CustomListView("moin","uddin"),
   CustomListView("moin","uddin"),
    CustomListView("moin","Quazi"),
      CustomListView("moin","uddin"),
   CustomListView("moin","uddin"),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap:(){
                print("tapped");
              },
              title: Text( "${list[index].firstName} ${list[index].surName}"),
              leading: Image.asset(list[index].image),

               ),
          );
        }
        )
    );
  }
}