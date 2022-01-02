import 'package:flutter/material.dart';

class ChoiceList extends StatefulWidget {
  const ChoiceList({Key? key}) : super(key: key);

  @override
  _ChoiceListState createState() => _ChoiceListState();
}

class _ChoiceListState extends State<ChoiceList> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String dropdownValueBranch = '';
  String dropdownValueClass = '';
  String dropdownValueSubject = '';
  String dropdownValueSalle = '';
  String dropdownValueSession = '';

  Map<String, String> fieldValues = {};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Professor's Choice List"),
           backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        ),
        body: Form(
            key: _key,
            child: Column(
              children: [
                const Text("Select a Branch"),
                DropdownButtonFormField(
                  value: dropdownValueBranch,
                  items: const [
                    DropdownMenuItem<String>(
                        child: Text('-choose a branche-'), value: ''),
                    DropdownMenuItem<String>(
                        child: Text('Technologie de l Informatique'),
                        value: 'TI'),
                    DropdownMenuItem<String>(
                        child: Text('Génie Electrique'), value: 'GE'),
                    DropdownMenuItem<String>(
                        child: Text('Génie Mecanique'), value: 'GM'),
                    DropdownMenuItem<String>(
                        child: Text('Science Economique et de Gestion'),
                        value: 'G'),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValueBranch = value!;
                    });
                  },
                  validator: (value) {
                    if (dropdownValueBranch == '')
                      return 'you must select an option';
                    return null;
                  },
                  onSaved: (value){
                    setState(() {
                      fieldValues['Branch'] = value.toString();
                    });
                  },
                ),
                const Text("Select a class"),
                DropdownButtonFormField(
                  value: dropdownValueClass,
                  items: const [
                    DropdownMenuItem<String>(
                        child: Text('-choose a Class-'), value: ''),
                    DropdownMenuItem<String>(child: Text('TI'), value: 'TI'),
                    DropdownMenuItem<String>(
                        child: Text('DSI2'), value: 'DSI2'),
                    DropdownMenuItem<String>(
                        child: Text('MDW2'), value: 'MDW2'),
                    DropdownMenuItem<String>(
                        child: Text('RSI2'), value: 'RSI2'),
                    DropdownMenuItem<String>(
                        child: Text('SEM2'), value: 'SEM2'),
                    DropdownMenuItem<String>(
                        child: Text('DSI3'), value: 'DSI3'),
                    DropdownMenuItem<String>(
                        child: Text('MDW3'), value: 'MDW3'),
                    DropdownMenuItem<String>(
                        child: Text('RSI3'), value: 'RSI3'),
                    DropdownMenuItem<String>(
                        child: Text('SEM3'), value: 'SEM3'),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValueClass = value!;
                    });
                  },
                  validator: (value) {
                    if (dropdownValueClass == '')
                      return 'you must select an option';
                    return null;
                  },
                  onSaved: (value){
                    setState(() {
                      fieldValues['Class'] = value.toString();
                    });
                  },
                ),
                const Text("Select a Subject"),
                DropdownButtonFormField(
                  value: dropdownValueSubject,
                  items: const [
                    DropdownMenuItem<String>(
                        child: Text('-choose a subject-'), value: ''),
                    DropdownMenuItem<String>(
                        child: Text('Machine Learning'),
                        value: 'Machine Learning'),
                    DropdownMenuItem<String>(
                        child: Text('Big Data'), value: 'Big Data'),
                    DropdownMenuItem<String>(child: Text('UML'), value: 'UML'),
                    DropdownMenuItem<String>(child: Text('POO'), value: 'POO'),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValueSubject = value!;
                    });
                  },
                  validator: (value) {
                    if (dropdownValueSubject == '')
                      return 'you must select an option';
                    return null;
                  },
                  onSaved: (value){
                    setState(() {
                      fieldValues['Subject'] = value.toString();
                    });
                  },
                ),
                const Text("Select a Salle"),
                DropdownButtonFormField(
                  value: dropdownValueSalle,
                  items: const [
                    DropdownMenuItem<String>(
                        child: Text('-choose a Salle-'), value: ''),
                    DropdownMenuItem<String>(
                        child: Text('LI1.1'), value: 'LI1.1'),
                    DropdownMenuItem<String>(
                        child: Text('LI1.2'), value: 'LI1.2'),
                    DropdownMenuItem<String>(
                        child: Text('LI1.3'), value: 'LI1.3'),
                    DropdownMenuItem<String>(
                        child: Text('LI1.4'), value: 'LI1.4'),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValueSalle = value!;
                    });
                  },
                  validator: (value) {
                    if (dropdownValueSalle == '')
                      return 'you must select an option';
                    return null;
                  },
                  onSaved: (value){
                    setState(() {
                      fieldValues['Salle'] = value.toString();
                    });
                  },
                ),
                const Text("Select a Session"),
                DropdownButtonFormField(
                  value: dropdownValueSession,
                  items: const [
                    DropdownMenuItem<String>(
                        child: Text('-choose a Session-'), value: ''),
                    DropdownMenuItem<String>(child: Text('S1'), value: 'S1'),
                    DropdownMenuItem<String>(child: Text('S2'), value: 'S2'),
                    DropdownMenuItem<String>(child: Text('S3'), value: 'S3'),
                    DropdownMenuItem<String>(child: Text('S4'), value: 'S4'),
                    DropdownMenuItem<String>(child: Text('S5'), value: 'S5'),
                    DropdownMenuItem<String>(child: Text('S6'), value: 'S6'),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValueSession = value!;
                    });
                  },
                  validator: (value) {
                    if (dropdownValueSession == '')
                      return 'you must select an option';
                    return null;
                  },
                  onSaved: (value){
                    setState(() {
                      fieldValues['Session'] = value.toString();
                    });
                  },
                ),
                ElevatedButton(
                  //textColor: Colors.blue,
                  child: const Text(
                    'Sumbit',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      _key.currentState!.save();
                      fieldValues.forEach((label, value) => print('$label = $value'));
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
