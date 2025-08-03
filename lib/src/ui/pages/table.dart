import 'package:flutter/material.dart';

class Mytable extends StatelessWidget {
  Mytable({super.key});
  final List<Map<String, dynamic>> data = List.generate(50, (index) {
    return {
      'name': 'junayed $index',
      'id': '221-15-539$index',
      'address': "address$index",
      'check': index % 5 != 0,
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Table(
          border: TableBorder.all(color: Colors.black),
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Text(
                      "Name",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text(
                      "Id",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text(
                      "Address",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),

            ...List.generate(data.length, (index) {
              // log(data[index]['name']);
              // log(data[index]['id']);
              // log(data[index]['address']);
              return TableRow(
                decoration: BoxDecoration(
                  color: data[index]['check'] ? null : Colors.redAccent,
                ),
                children: [
                  TableCell(child: Text(data[index]['name'])),
                  TableCell(child: Text(data[index]['id'])),
                  TableCell(child: Text(data[index]['address'])),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
