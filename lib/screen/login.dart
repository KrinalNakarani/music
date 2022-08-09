import 'package:flutter/material.dart';
import 'package:music/model/shared.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 200,
                child: Image.asset("assets/images/ssss.png"),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.mail,
                    color: Colors.indigo,
                  ),
                  label: Text("E-mail"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: pass,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Colors.indigo,
                  ),
                  label: Text("Passward"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.indigo),
                        onPressed: () async {
                          share().createSHRP(email.text, pass.text);
                          Navigator.pushNamed(context, 'home');
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
