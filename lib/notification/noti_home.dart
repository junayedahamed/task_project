import 'package:flutter/material.dart';

class NotiHome extends StatefulWidget {
  const NotiHome({super.key});

  @override
  State<NotiHome> createState() => _NotiHomeState();
}

class _NotiHomeState extends State<NotiHome> {
  // final NotiFunctions notification = NotiFunctions();
  @override
  void initState() {
    super.initState();
    // notification.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification")),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(onPressed: () {}, child: Text("Get")),
            ),
          ],
        ),
      ),
    );
  }
}
