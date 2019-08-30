import 'package:flutter/material.dart';

class ProductoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Producto'),
        actions: <Widget>[
          
          IconButton(
            icon: Icon( Icons.photo_size_select_actual ),
            onPressed: (){},
          ),
          
          IconButton(
            icon: Icon( Icons.camera_alt ),
            onPressed: (){},
          ),

        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            children: <Widget>[

              _crearNombre(),

              _crearPrecio(),

              _crearBoton(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _crearNombre() {

    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: 'Producto',
      ),
    );

  }

  Widget _crearPrecio() {

    return TextFormField(
      keyboardType: TextInputType.numberWithOptions( decimal: true ),
      decoration: InputDecoration(
        labelText: 'Precio',
      ),
    );

  }

  Widget _crearBoton() {

    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      textColor: Colors.white,
      color: Colors.deepPurple,
      label: Text('Guardar'),
      icon: Icon( Icons.save ),
      onPressed: (){},
    );

  }


}