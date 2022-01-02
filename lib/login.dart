import 'package:flutter/material.dart';
import 'package:iset/admin/admin_submission.dart';
import 'package:iset/professor/choicelist.dart';
import 'package:iset/signup.dart';
import 'package:iset/student/student.dart';
class Login extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Authentification',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue[800],
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Scheduler ISET Sousse',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 25),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: ElevatedButton(
                      //textColor: Colors.white,
                      //color: Colors.blue,
                      child: const Text('Forgot Password?'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: ElevatedButton(
                      //textColor: Colors.white,
                      //color: Colors.blue,
                      child: const Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Column(
                  children: <Widget>[
                    const Text('Do not have account?'),
                    ElevatedButton(
                        //textColor: Colors.blue,
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Signup()), 
                          );
                        }),
                        // ElevatedButton(
                        // //textColor: Colors.blue,
                        // child: const Text(
                        //   'Test Button',
                        //   style: TextStyle(fontSize: 15),
                        // ),
                        // onPressed: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         //builder: (context) => MainPage()), // for admin
                        //          builder: (context) => Emp()), // for professor
                        //   );
                        // })
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )
              ],
            )));
  }
}
