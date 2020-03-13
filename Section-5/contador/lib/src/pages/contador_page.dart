import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State {
  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido $_conteo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Número de clicks:',
            style: _estiloTexto,
          ),
          Text(
            '$_conteo',
            style: _estiloTexto,
          ),
        ],
      )),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _resetear,
        ),
        Expanded(
            child: SizedBox(
          width: 5.0,
        )),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _restar,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        ),
        SizedBox(
          width: 5.0,
        )
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _restar() {
    if (_conteo > 0) {
      _conteo--;
    } else {
      _conteo = _conteo;
    }
    setState(() {});
  }

  void _resetear() {
    setState(() => _conteo = 0);
  }
}
