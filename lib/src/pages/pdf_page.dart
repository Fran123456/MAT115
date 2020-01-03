

import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';


/// Homepage
class PdfPage extends StatefulWidget {
  @override
  _PdfPageState createState() => _PdfPageState();
  
}

class _PdfPageState extends State<PdfPage> {
  bool _isLoading = true;
  PDFDocument documento;
  String url = api.pdfUrl();

  @override
  void initState(){
      super.initState();
      
  }

  @override
  Widget build(BuildContext context){
      var pdf = ModalRoute.of(context).settings.arguments;
      pdf = url+pdf;
     if(_isLoading){
       cargarPdf(pdf);
       return Center(child: CircularProgressIndicator());
     }else{
      return PDFViewer(
        document: documento,
        showPicker: true,
      );
     }
     
     /*return Center(
       child: Text(pdf),
       );*/
  }

  cargarPdf(String pdf) async{
   documento = await PDFDocument.fromURL(pdf);

   try{
     setState(() {
     _isLoading = false;
     });
   }catch(e){
     
   }
   
 }

}  



