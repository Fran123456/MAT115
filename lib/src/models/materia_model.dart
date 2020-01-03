class Materias {

  List<Materia> items = new List();

  Materias();

  Materias.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final pelicula = new Materia.fromJsonMap(item);
      items.add( pelicula );
    }

  }

}

class Materia {
  int id;
  String siglas;
  String titulo;
  String descripcion;
  String createdAt;
  String updatedAt;

  Materia({
   this.id,
   this.siglas,
   this.titulo,
   this.descripcion,
   this.createdAt,
   this.updatedAt,
  });

  Materia.fromJsonMap( Map<String, dynamic> json ) {
    id                = json['id'];
    siglas           = json['siglas'];
    titulo            = json['titulo'];
    descripcion     = json['descripcion'];
    createdAt      = json['created_at'];
    updatedAt      = json['updated_at'];

  }


}


