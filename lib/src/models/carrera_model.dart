class Carreras {

  List<Carrera> items = new List();

  Carreras();

  Carreras.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final pelicula = new Carrera.fromJsonMap(item);
      items.add( pelicula );
    }

  }

}

class Carrera {
  int id;
  String siglas;
  String titulo;
  String descripcion;
  String createdAt;
  String updatedAt;

  Carrera({
   this.id,
   this.siglas,
   this.titulo,
   this.descripcion,
   this.createdAt,
   this.updatedAt,
  });

  Carrera.fromJsonMap( Map<String, dynamic> json ) {
    id                = json['id'];
    siglas           = json['siglas'];
    titulo            = json['titulo'];
    descripcion     = json['descripcion'];
    createdAt      = json['created_at'];
    updatedAt      = json['updated_at'];

  }


}


