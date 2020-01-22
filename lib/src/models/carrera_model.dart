class Carreras {

  List<Carrera> items = new List();

  Carreras();

  Carreras.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final ca = new Carrera.fromJsonMap(item);
      items.add( ca );
    }

  }

}

class Carrera {
  int id;
  String carrera;
  String descripcion;
  String createdAt;
  String updatedAt;

  Carrera({
   this.id,
   this.carrera,
   this.descripcion,
   this.createdAt,
   this.updatedAt,
  });

  Carrera.fromJsonMap( Map<String, dynamic> json ) {
    id                = json['id'];
    carrera            = json['carrera'];
    descripcion     = json['descripcion'];
    createdAt      = json['created_at'];
    updatedAt      = json['updated_at'];

  }


}


