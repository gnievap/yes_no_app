import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF976EDB);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.orange,
  Colors.pink,
  Colors.indigo,
  Colors.grey,
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    required this.selectedColor
  }): assert ( selectedColor >= 0 && selectedColor <= _colorThemes.length - 1, 'Colors must be between 0 and ${_colorThemes.length}' );

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
} 