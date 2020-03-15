import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete', 'Ocho', 'Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete', 'Ocho'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {
      final tempWidget = ListTile(title: Text(opt));

      lista
        ..add(tempWidget)
        ..add(Divider(
          indent: 5,
          endIndent: 5,
          height: 10,
          thickness: 10,
        ));
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(item + '!'),
              subtitle: Text('Cualquier cosa'),
              leading: Icon(Icons.account_circle),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            elevation: 3.0,            
          )
        ],
      );
    }).toList();
  }
}
