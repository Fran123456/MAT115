class Unidades {

  List<Unidad> items = new List();

  Unidades();

  Unidades.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final pelicula = new Unidad.fromJsonMap(item);
      items.add( pelicula );
    }

  }

}

class Unidad {
  int id;
  String titulo;
  String descripcion;
  int materiaId;
  String createdAt;
  String updatedAt;

  Unidad({
   this.id,
   this.titulo,
   this.descripcion,
   this.materiaId,
   this.createdAt,
   this.updatedAt,
  });

  Unidad.fromJsonMap( Map<String, dynamic> json ) {
    id               = json['id'];
    titulo            = json['titulo'];
    descripcion     = json['descripcion'];
    materiaId      = json['materia_id'];
    createdAt      = json['created_at'];
    updatedAt      = json['updated_at'];

  }


}


