import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfView extends StatelessWidget {
  const PdfView({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
      body:SfPdfViewer.asset(
              'assets/internal system 1.pdf'));
}

}