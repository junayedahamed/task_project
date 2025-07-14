import 'package:flutter/material.dart';
import 'package:task_project/src/ui/pdf/my_button.dart';
import 'package:task_project/src/ui/pdf/pdf_func.dart';

class PdfDownload extends StatelessWidget {
  PdfDownload({super.key});
  final PdfFunc pdf = PdfFunc();
  final List<String> sampleTexts = [
    "Apple",
    "Banana",
    "Cherry",
    "Dragonfruit",
    "Elderberry",
    "Fig",
    "Grape",
    "Honeydew",
    "Iceberg Lettuce",
    "Jackfruit",
    "Kiwi",
    "Lemon",
    "Mango",
    "Nectarine",
    "Orange",
    "Papaya",
    "Quince",
    "Raspberry",
    "Strawberry",
    "Tomato",
    "Ugli Fruit",
    "Vanilla Bean",
    "Watermelon",
    "Xigua",
    "Yam",
    "Zucchini",
    "Avocado",
    "Blueberry",
    "Coconut",
    "Date",
    "Eggplant",
    "Grapefruit",
    "Hazelnut",
    "Indian Fig",
    "Jujube",
    "Kumquat",
    "Lychee",
    "Mulberry",
    "Nutmeg",
    "Olive",
    "Peach",
    "Radish",
    "Sapodilla",
    "Tamarind",
    "Ube",
    "Velvet Apple",
    "White Currant",
    "Ximenia",
    "Yellow Passionfruit",
    "Ziziphus",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                pdf.download(sampleTexts);
              },
              child: Icon(Icons.download),
            ),
          ),

          SizedBox(height: 50),

          Row(
            children: [
              Text("Actions: "),
              MyButton(
                onPressed: () {},
                buttonName: "Upload",
                iconpath: 'assets/icons/upload_cloud.svg',
              ),
              SizedBox(width: 15),
              MyButton(
                onPressed: () {
                  pdf.getPermission(sampleTexts);
                },
                buttonName: "PDF",
                iconpath: 'assets/icons/dpf_download.svg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
