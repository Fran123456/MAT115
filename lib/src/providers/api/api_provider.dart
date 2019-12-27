class ApiProvider {
  
  String key = "EIGA7SBzsdho13g31052z9He0JiR-MAT115";
  String api(){
     return 'http://192.168.1.8/subjectResourcesAPI/public/api/';
  }
  String pdfUrl(){
    return "http://192.168.1.8/subjectResourcesAPI/public/pdf/";
  }
}

ApiProvider api = new ApiProvider();
