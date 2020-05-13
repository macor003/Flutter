import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        children: <Widget>[_crearInput(), Divider(), _cargarInformacion()],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          counter: Text("${_nombre.length} Caracteres"),
          hintText: 'Nombre del Usuario',
          labelText: 'Nombre',
          suffixIcon: Icon(Icons.supervisor_account),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        setState(() {
        _nombre = valor;          
        });
      },
    );
  }

  Widget _cargarInformacion() {
    return ListTile(
      title: Text("Nombre es: $_nombre"),
    );
  }
}
