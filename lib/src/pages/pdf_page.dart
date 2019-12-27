

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

     if(_isLoading){
       final pdf = ModalRoute.of(context).settings.arguments;
       cargarPdf(pdf);

       return Center(child: CircularProgressIndicator());
     }else{
      return PDFViewer(
        document: documento,
        showPicker: true,
      );
     }
  }

  cargarPdf(String pdf) async{
   documento = await PDFDocument.fromURL(url+pdf);

   try{
     setState(() {
     _isLoading = false;
     });
   }catch(e){
     
   }
   
 }

}  



