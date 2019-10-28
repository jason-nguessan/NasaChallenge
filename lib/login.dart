import 'package:flutter/material.dart';
import 'package:mybackpack/last.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class Astronaut {
  String email = "";
  String password = "";
}

class _LoginState extends State<Login> {
  //Create Object + form key
  Astronaut astronaut = new Astronaut();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.blue.shade400,
        ),
        backgroundColor: Colors.cyan.shade100,
        body: Container(
          alignment: Alignment.center,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  style: TextStyle(color: Colors.brown.shade500),
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  //lvl 2 - accept characters that end with the given email e.g @uoguelph
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.brown.shade500),

                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                    //lvl 2 - accept characters that end with the given email e.g @uoguelph
                  ),
                ),
                RaisedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    redirect();
                  },
                )
              ],
            ),
          ),
        ));
  }

//See this in API building or Data analysis
//
  Future redirect() {
    MaterialPageRoute route =
        MaterialPageRoute(builder: (BuildContext context) {
      return Last();
    });

    return Navigator.of(context).push(route);
  }
}
