class Productos {

  List<Producto> items = new List();

  Productos();

  Productos.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final ca = new Producto.fromJsonMap(item);
      items.add( ca );
    }
  }
}

class Producto {
  int id;
  String titulo;
  String precio;
  String fecha;
  String descripcion;
  String whatsapp;
  String nombre;
  String createdAt;
  String updatedAt;

  Producto({
   this.id,
   this.titulo,
   this.precio,
   this.fecha,
   this.descripcion,
   this.whatsapp,
   this.nombre,
   this.createdAt,
   this.updatedAt,
  });

  Producto.fromJsonMap( Map<String, dynamic> json ) {
    id                = json['id'];
    titulo            = json['titulo'];
    precio            = json['precio'];
    fecha            = json['fecha'];
    descripcion     = json['descripcion'];
    whatsapp            = json['whatsapp'];
    nombre            = json['nombre'];
    createdAt      = json['created_at'];
    updatedAt      = json['updated_at'];

  }

}


