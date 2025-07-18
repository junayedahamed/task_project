import 'dart:developer';

import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  final _myformKey = GlobalKey<FormState>();

  final TextEditingController controller1 = TextEditingController();

  final TextEditingController controller2 = TextEditingController();
  bool _visible = true;
  void toogle() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HEllo")),
      body: Form(
        key: _myformKey,
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.lime]),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(alignment: Alignment.centerLeft, child: Text("Email")),
                Center(
                  child: SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: controller1,
                      validator: (value) {
                        if (value != null) {
                          if (value.length >= 8) {
                            return null;
                          }
                        }

                        return "Enter a email";
                      },
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Align(alignment: Alignment.centerLeft, child: Text("pass")),
                SizedBox(
                  width: 350,
                  child: TextFormField(
                    controller: controller2,
                    obscureText: _visible,
                    validator: (value) {
                      if (value != null) {
                        if (value.length >= 8) {
                          return null;
                        }
                      }

                      return "Enter a pass";
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffix: GestureDetector(
                        onTap: () {
                          toogle();
                        },
                        child: Icon(
                          _visible ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if (_myformKey.currentState!.validate()) {
                      log("Login success");
                    } else {
                      log("Invalida pass or email");
                    }
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
