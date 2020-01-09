class Contenidos {

  List<Contenido> items = new List();

  Contenidos();

   Contenidos.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final pelicula = new Contenido.fromJsonMap(item);
      items.add( pelicula );
    }
  }

}

class Contenido {
  int id;
  String titulo;
  String descripcion;
  String pdf;
  String video;
  String url;
  String vistas;
  String temarioId; //debe ser int
  String createdAt;
  String updatedAt;

  Contenido({
   this.id,
   this.titulo,
   this.descripcion,
   this.pdf,
   this.video,
   this.url,
   this.vistas,
   this.temarioId,
   this.createdAt,
   this.updatedAt,
  });

  Contenido.fromJsonMap( Map<String, dynamic> json ) {
    id               = json['id'];
    titulo           = json['titulo'];
    descripcion      = json['descripcion'];
    pdf              = json['pdf'];
    video              = json['video'];
    url              = json['url'];
    vistas             = json['vistas'];
    temarioId        = json['temario_id'];
    createdAt      = json['created_at'];
    updatedAt      = json['updated_at'];

  }
}

