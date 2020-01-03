class Temarios {

  List<Temario> items = new List();

  Temarios();

  Temarios.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final pelicula = new Temario.fromJsonMap(item);
      items.add( pelicula );
    }
  }

}

class Temario {
  int id;
  String titulo;
  String descripcion;
  String unidadId; //debe ser int
  String createdAt;
  String updatedAt;

  Temario({
   this.id,
   this.titulo,
   this.descripcion,
   this.unidadId,
   this.createdAt,
   this.updatedAt,
  });

  Temario.fromJsonMap( Map<String, dynamic> json ) {
    id               = json['id'];
    titulo            = json['titulo'];
    descripcion     = json['descripcion'];
    unidadId      = json['unidad_id'];
    createdAt      = json['created_at'];
    updatedAt      = json['updated_at'];

  }
}


