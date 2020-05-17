import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 101.0;
  bool _valorBloquearSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        backgroundColor: Colors.redAccent[700],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.black,
      label: 'Tamaño Imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_valorBloquearSlider)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _valorBloquearSlider,
        onChanged: (valor) {
          setState(() {
            _valorBloquearSlider = valor;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _valorBloquearSlider,
        onChanged: (valor) {
          setState(() {
            _valorBloquearSlider = valor;
          });
        });
  }

  Widget _crearImagen() {
    return Image(
      width: _valorSlider,
      image: NetworkImage(
          'https://www.actualidadmotor.com/wp-content/uploads/2020/01/f1-logo.png'),
      fit: BoxFit.contain,
    );
  }
}
