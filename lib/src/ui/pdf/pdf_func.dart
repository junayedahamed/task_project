import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/widgets.dart' as pw;

import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

class PdfFunc {
  void getPermission(List<String> data) async {
    final response = await Permission.storage.request();
    if (response.isGranted) {
      download(data);
    } else if (response.isDenied) {
      log("Denied");
      return;
    }
  }

  Future<void> download(List<String> data) async {
    final pdf = pw.Document();

    // Load font from assets
    final ByteData fontData = await rootBundle.load('assets/font/notosans.ttf');
    final pw.Font customFont = pw.Font.ttf(fontData.buffer.asByteData());

    // Create PDF page
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: List.generate(data.length, (index) {
              return pw.Padding(
                padding: const pw.EdgeInsets.only(bottom: 4),
                child: pw.Text(
                  '$index : ${data[index]}',
                  style: pw.TextStyle(font: customFont),
                ),
              );
            }),
          );
        },
      ),
    );

    // Save file to device (temporary directory)
    final downloadsPath = '/storage/emulated/0/Download';
    final file = File('$downloadsPath/example.pdf');
    // final file = File("${outputDir.path}/example.pdf");
    await file.writeAsBytes(await pdf.save());

    print("PDF saved to ${file.path}");
  }
}
