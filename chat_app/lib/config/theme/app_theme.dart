
import 'package:flutter/material.dart';

const Color customColor = Color.fromARGB(255, 102, 6, 237);

const List<Color> _colorThemes = [
  Color.fromRGBO(102, 6, 237, 1),
  Colors.green,
  Colors.red,
  Colors.lightBlue,
  Colors.yellow,
  Colors.teal
  ];

class AppTheme {

  final int selectedColor;
  AppTheme({
    this.selectedColor = 0
    }) : 
    assert(selectedColor >= 0 && selectedColor < _colorThemes.length, 'selectedColor must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light,
    );
  }
}