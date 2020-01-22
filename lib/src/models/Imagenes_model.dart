class Imagenes {

  List<Imagen> items = new List();

  Imagenes();

  Imagenes.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final ca = new Imagen.fromJsonMap(item);
      items.add( ca );
    }

  }

}

class Imagen {
  int id;
  String url;
  String productoId;
  String createdAt;
  String updatedAt;

  Imagen({
   this.id,
   this.url,
   this.productoId,
   this.createdAt,
   this.updatedAt,
  });

  Imagen.fromJsonMap( Map<String, dynamic> json ) {
    id                = json['id'];
    url            = json['url'];
    productoId     = json['productoId'];
    createdAt      = json['created_at'];
    updatedAt      = json['updated_at'];

  }


}


