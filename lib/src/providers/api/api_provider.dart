class ApiProvider {
  
  String key = "EIGA7SBzsdho13g31052z9He0JiR-MAT115";
  String nameApp ="Resources FIA UES";
  String api(){
     return 'https://apiuesfia.website/public/api/';
  }
  String pdfUrl(){
    return 'https://apiuesfia.website/public/pdf/';
  }

  String apiUploads(){
     return 'https://apiuesfia.website/public/uploads/';
  }
}

ApiProvider api = new ApiProvider();
