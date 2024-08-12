import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});




  @override
  State<StatefulWidget> createState()=>_HomePageState();

  }
class _HomePageState extends State<HomePage>{
  late PdfControllerPinch pdfControllerPinch;
  @override
  @override
  void initState() {
    super.initState();
    pdfControllerPinch=PdfControllerPinch(document: PdfDocument.openAsset("assets/pdfs/yas.pdf"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF Viewer",style: TextStyle(
          color: Colors.indigo,
        ),),
        backgroundColor: Colors.white,
      ),
      body: _buildUI(),
    );
  }


  Widget _buildUI (){
    return  Column(
      children: [
       _pdfView(),
      ],
    );
  }
  Widget _pdfView(){
  return Expanded(child:
  PdfViewPinch(
    controller: pdfControllerPinch,));
  }
}
