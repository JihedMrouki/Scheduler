import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:http/http.dart" as http;
import 'package:iset/admin/widget/navigation_drawer.dart';

class Validation extends StatefulWidget {
  const Validation({Key? key}) : super(key: key);

  @override
  _ValidationState createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  List list = [];

  Future<dynamic> getjsondata(var url) async {
    var uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      list = jsonDecode(response.body);
      print(list);
      return jsonDecode(response.body);
    } else
      print("Error fetching Data");
  }

  Future<String?> loadFile() async {
    String contenue = await rootBundle.loadString("assets/list.json");
    print(contenue);
    List datajson = jsonDecode(contenue);
    setState(() {
      list = datajson;
    });
  }

  @override
  void initState() {
    super.initState();
    getjsondata('https://jsonplaceholder.typicode.com/todos/');
    //loadFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text("User Validation"),
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
      ),
      body:
      Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.white,
                child: ListTile(
                  title: Text("userId: " + list[index]['userId'].toString()),
                  subtitle: Column(
                  children: <Widget>[
                    Container(child: Row() ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                    Text("\nId: " +
                      list[index]['id'].toString() +
                      "\nName: " +
                      list[index]['name'].toString()+
                      "\nEmail: " +
                      list[index]['email'].toString()),
                      const SizedBox(width: 10),
                     ButtonBar(children: [
                                    FlatButton(
                                      child: Text("Professor"),
                                      onPressed: () {},
                                    ),
                                  ]),
                    ButtonBar(children: [
                                    FlatButton(
                                      child: Text("Student"),
                                      onPressed: () {},
                                    ),
                                  ]),
                    ButtonBar(children: [
                                    FlatButton(
                                      child: Text("Delete"),
                                      onPressed: () {},
                                    ),
                                  ]),
                      ],
                    )
                  ],
                ),
                ),
              );
            }),
      ),
    );
  }
}
