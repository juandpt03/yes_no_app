import 'package:flutter/material.dart';

const Color _customColor = Color(0xffE2B6CF);
const List<Color> _colorThemes = [
  _customColor,
  Color(0xffF7CAC9),
  Color(0xffB5EAD7),
  Color(0xffF7E3AF),
  Color(0xffB2D7D9),
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      useMaterial3: true,
      // brightness: Brightness.dark,
    );
  }
}
