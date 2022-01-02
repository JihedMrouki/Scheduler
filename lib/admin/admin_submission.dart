import 'package:flutter/material.dart';
import 'package:iset/admin/widget/navigation_drawer.dart';

class Adminsubmition extends StatefulWidget {
  const Adminsubmition({Key? key}) : super(key: key);

  @override
  _AdminsubmitionState createState() => _AdminsubmitionState();
}

class _AdminsubmitionState extends State<Adminsubmition> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text("Admin Submition"),
          backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        ),
        body: Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Branch",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Field is required.';
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Class",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Field is required.';
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Subject",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Field is required.';
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Salle",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Field is required.';
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Session",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Field is required.';
                    return null;
                  },
                ),
                ElevatedButton(
                  //textColor: Colors.blue,
                  child: const Text(
                    'Add',
                  style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      _key.currentState!.save();
                      print('form submitted');
                    }
                    //Submit
                  },
                )
              ],
            )),
      ),
    );
  }
}
