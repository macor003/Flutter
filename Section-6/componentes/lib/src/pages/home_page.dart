import 'package:componentes/src/utils/icon_string.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        backgroundColor: Colors.orange,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData().then( (opciones){});

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = new List<Widget>();

    data.forEach((opts) {
      final widgetTemp = Card(
        child: ListTile(
          title: Text(opts['texto']),
          leading: getIcon(opts['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.orange),
          onTap: () {
            Navigator.pushNamed(context, opts['ruta']);

            //final route = MaterialPageRoute(builder: (context) => AlertPage());
            //Navigator.push(context, route);
          },
        ),
      );

      opciones..add(widgetTemp);
    });

    return opciones;
  }
}
