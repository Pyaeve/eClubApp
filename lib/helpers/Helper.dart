// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/Movements.dart';
import 'Samples.dart';

//Clase Helper  tiene varios metodos static que nos sirven para calcular importes discriminar movs etc
class Helper {
  //lisat de categorias
  static List<String> cats = [
    'Entretenimiento',
    'Bares y Restaurantes',
    'Compras',
    'Transporte',
    'Salud',
    'Retiros',
    'Ingresos'
  ];
  //lista de de imgs
  static List<String> imgs = [
    'assets/icons/eclub_icon_resto_violeta_transparente.webp',
    'assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp',
    'assets/icons/eclub_icon_bus_naranja_transparente_64x64.webp',
    '',
    '',
    ''
  ];
  //lisat de meses
  static List<String> months = [
    'enero',
    'febrero',
    'marzo',
    'abril',
    'mayo',
    'junio',
    'julio',
    'agosto',
    'septimembre',
    'octubre',
    'noviembre',
    'diciembre'
  ];

// calcular importe total por categoria
  static int getTotalImportOutByCategory(String cat) {
    int total = 0;
    for (var m in movs) {
      if (m.category.toLowerCase() == cat.toLowerCase() && m.type == 'out') {
        total += m.import;
      }
    }
    return total;
  }

// calcualr el importe total de todos los movimientos
  static int getTotalImportByMovemements() {
    int total = 0;
    int ingresos = 0;
    int gastos = 0;
    for (var mov in movs) {
      if (mov.type == 'in') {
        ingresos += mov.import;
      } else if (mov.type == 'out') {
        gastos += mov.import;
      }
    }
    total = (ingresos - gastos);
    return total;
  }

  //calcular el importe total por mes
  static int getTotalImportOutByMounth(String mounth) {
    int total = 0;
    for (var m in movs) {
      if (getDatetimeFormatted('MMMM', m.dt) == mounth && m.type == 'out') {
        total += m.import;
      }
    }
    return total;
  }

//deveule la fecha formateada
  static String getDatetimeFormatted(String datePattern, String dateString) {
    DateTime dateNow = DateTime.parse(dateString);
    DateFormat dateFormatter = DateFormat(datePattern, 'es_ES');
    String dateFormatted = dateFormatter.format(dateNow);
    return dateFormatted;
  }

  static List<Movements> getMovsOutByCatAndMounth(String cat) {
    List<Movements> movsByCats =
        movs.where((m) => m.category == cat && m.type == 'out').toList();
    List<Movements> movsByMounths = movsByCats
        .map((m) => months
            .map((e) =>
                getDatetimeFormatted('MMMM', m.dt) == e && m.type == 'out')
            .toList())
        .cast<Movements>()
        .toList();
    return movsByMounths;
  }

//calcualr importe total por categoria y mes
  static int getTotalImporatOutBNyCategoryAndMounths(
      String cat, String mounth) {
    int total = 0;

    for (var m in movs) {
      if (m.category == cat &&
          getDatetimeFormatted('MMMM', m.dt) == mounth &&
          m.type == 'out') {
        total += m.import;
      }
    }
    return total;
  }

// devuelve movientos  por Categoria y Mes
  static List<Movements> getMovementsOutByCategoryAndMounth(
      String cat, String mounth) {
    List<Movements> movsByCat = movs
        .where((m) =>
            m.category == cat &&
            getDatetimeFormatted('MMMM', m.dt) == mounth &&
            m.type == 'out')
        .toList();
    return movsByCat;
  }

// devuele l;a img que se usa par las categorias
  static String getImgByCategory(String cat) {
    String img = '';
    switch (cat) {
      case 'Compras':
        img =
            'assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp';
        break;
      case 'Bares y Restaurantes':
        img = 'assets/icons/eclub_icon_resto_violeta_transparente.webp';
        break;
      case 'Transporte':
        img = 'assets/icons/eclub_icon_bus_naranja_transparente_64x64.webp';
        break;
      case 'Entretenimiento':
        img = 'assets/icons/eclub_icon_faces_green.webp';
        break;
      case 'Retiros':
        img = 'assets/icons/eclub_icon_cajero_fondo_transparente_64x64.webp';

        break;
      case 'Salario':
        img = 'assets/icons/eclub_icon_billete_primary_color_transparent.webp';

        break;
      case 'Salud':
        img = 'assets/icons/eclub_icon_health_color_transparent_64x64.webp';
        break;
    }
    return img;
  }

//devuelve el Color que se asigna cada categoria
  static Color getColorByCategory(String cat) {
    Color customColor = Colors.black;
    switch (cat) {
      case 'Retiros':
        customColor = const Color.fromARGB(255, 33, 194, 194);
        break;
      case 'Compras':
        customColor = const Color.fromARGB(255, 72, 114, 228);
        break;
      case 'Entretenimiento':
        customColor = const Color.fromARGB(164, 62, 190, 2);
        break;
      case 'Bares y Restaurantes':
        customColor = const Color.fromARGB(255, 230, 142, 238);
        break;
      case 'Transporte':
        customColor = const Color.fromARGB(255, 248, 191, 117);
        break;
      case 'Salud':
        customColor = const Color.fromARGB(255, 245, 29, 29);
        break;
      case 'Salario':
        customColor = const Color.fromARGB(255, 201, 131, 2);
        break;
    }

    return customColor;
  }

//devuelte un numbero formateado
  static String getNumberFormatPY(int number) {
    var gsFormat =
        NumberFormat.currency(locale: "es_PY", decimalDigits: 0, symbol: "Gs.");
    return gsFormat.format(number);
  }
}
