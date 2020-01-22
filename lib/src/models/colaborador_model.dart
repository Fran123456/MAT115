class Colaboradores {

  List<Colaborador> items = new List();

  Colaboradores();

  Colaboradores.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final ca = new Colaborador.fromJsonMap(item);
      items.add( ca );
    }

  }

}

class Colaborador {
  int id;
  String nombre;
  String contacto;
  String descripcion;
  String createdAt;
  String updatedAt;

  Colaborador({
   this.id,
   this.nombre,
   this.contacto,
   this.descripcion,
   this.createdAt,
   this.updatedAt,
  });

  Colaborador.fromJsonMap( Map<String, dynamic> json ) {
    id                = json['id'];
    nombre            = json['nombre'];
    contacto            = json['contacto'];
    descripcion     = json['descripcion'];
    createdAt      = json['created_at'];
    updatedAt      = json['updated_at'];

  }


}


