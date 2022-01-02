import 'package:flutter/material.dart';
import 'package:iset/professor/choicelist.dart';


class NavigationDrawerWidget extends StatelessWidget {

  final Padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child:ListView(
          children:<Widget> [
            const SizedBox(height: 48),
            buildMenuItem(
              icon: Icons.add, 
              text: 'Choice List',
              onClicked: () => selectedItem(context,0),
            ),
            // divider beginning 
            const SizedBox(height: 24,),
            const Divider(color: Colors.white70),
            const SizedBox(height: 24),
            // divider ending
            const SizedBox(height: 16),
            buildMenuItem(
              icon: Icons.app_registration_sharp, 
              text: 'Schedule',
              onClicked: () => selectedItem(context,1),
            ),

          ],
        )

      ) ,
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }){
    final color = Colors.white;
    return ListTile(
      leading: Icon(icon, color:color),
      title: Text(text,style: TextStyle(color:color)),
      onTap: onClicked,
    );
  }
}

void selectedItem (BuildContext context, int index){
  Navigator.of(context).pop();
  switch(index){
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context)=> ChoiceList(),
      ));
      break;
      // case 1:
      // Navigator.of(context).push(MaterialPageRoute(
      //   builder: (context)=> /* page to navigate to */ ,
      // ));
      // break;
  }
}