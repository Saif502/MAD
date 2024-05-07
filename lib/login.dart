import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black54,
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [
            getInputRow(label: 'Username:', hint: 'Enter Username'),
            SizedBox(
              height: 10,
            ),
            getInputRow(label: 'Password:', hint: 'Enter Password'),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 10,
                        color: Color.fromARGB(66, 4, 91, 4),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  height: 120,
                  width: 150,
                  color: Colors.cyan,
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 198, 160, 32),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget getInputRow({String? label, String? hint}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label.toString()),
        SizedBox(
          width: 10,
        ),
        Text(hint.toString(), style: TextStyle(color: Colors.black45))
      ],
    );
  }
}
