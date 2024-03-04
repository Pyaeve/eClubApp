import 'package:eclubapp/models/Movements.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final List<Movements> movs = [
  Movements(
      id: 1,
      ref: '32432432l;j323',
      img:   getImgByCategory('Entretenimiento'), 
      dt: '2024-01-03 08:00:00',

business:'Internet',
     category: 'Entretenimiento',
      import: 250000),
  Movements(
      id: 2,
      ref: '12321312312312321',
      img:
         getImgByCategory('Compras'),
         dt: '2024-01-02 10:00:00',
      business: 'RESTO YA',
      category: 'Compras',
      import: 200000),
  Movements(
      id: 3,
      ref: '213213213123123',
      img: 'assets/icons/eclub_icon_bus_naranja_transparente_64x64.webp',
      dt: '2024-01-02 12:00:00',
      business: 'RESTO YA',
      category: 'Transporte',
      import: 100000),
  Movements(
      id: 4,
      ref: '2133232332213',
      img: getImgByCategory('Transporte'),
       dt: '2024-01-03 08:00:00',
      business: 'Uber',
      category: 'Transporte',
      import: 100000),
  Movements(
      id: 5,
      ref: '3345222344',
      img:
          getImgByCategory('Compras'),
          dt: '2024-01-03 09:00:00',
      business: 'Algun Ligar',
      category: 'Compras',
      import: 100000),
  Movements(
      id: 6,
      ref: '12312321323332w',
      img:
          'assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp',
      dt: '2024-01-04 14:00:00',
      business: 'Algun Lisssgar',
      category: 'Compras',
      import: 100000),
  Movements(
      id: 7,
      ref: 'ssadasdasdasd',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
      dt: '2024-01-04 12:33:00',
      business: 'Algun Lisssgar',
      category: 'Bares y Restaurantes',
      import: 145000),
      Movements(
      id: 8,
      ref: '3457564323434',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
      dt: '2024-01-22 12:33:00',
      business: 'Banco Regional',
      category: 'Retiros',
      import: 500000),
      Movements(
      id: 9,
      ref: '1233243243434',
      img: getImgByCategory('Entretenimiento'),
      dt: '2024-01-24 12:33:00',
      business: 'Playstation Network',
      category: 'Entretenimiento',
      import: 245000),
      Movements(
      id: 10,
      ref: 'ssadasdasdasd',
      img: getImgByCategory('Salud'),
      dt: '2024-01-23 12:33:00',
      business: 'Punto Farma',
      category: 'Salud',
      import: 145000),

      Movements(
      id: 11,
      ref: 'ssadasdasdasd',
      img:getImgByCategory('Entretenimiento'),
      dt: '2024-01-04 12:33:00',
      business: 'Internet',
            category: 'Entretenimiento',
      import: 145000),
      Movements(
      id: 12,
      ref: 'ssadasdasdasd',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
      dt: '2024-01-04 12:33:00',
      business: 'Algun Lisssgar',
      category: 'Bares y Restaurantes',
      import: 145000),
      Movements(
      id: 13,
      ref: 'ssadasdasdasd',
      img: getImgByCategory('Salud'),
      dt: '2024-01-35 12:33:00',
      business: 'Punto Farma',
      category: 'Salud',
      import: 145000),
    
];

List<Color> colores = [Colors.amber, Colors.deepPurple,Colors.blue, Colors.blueAccent, Colors.green, Colors.deepPurple];
List<String> cats =['Entretenimiento','Bares y Restaurantes','Compras','Transporte','Salud','Retiros','Ingresos']; 
  
List<String> imgs =['assets/icons/eclub_icon_resto_violeta_transparente.webp','assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp','assets/icons/eclub_icon_bus_naranja_transparente_64x64.webp','','',''];
List<String> months =['enero','febrero','marzo','abril','mayo','junio','julio','agosto','septimembre','octubre'];
int getTotalImportByCategory(String cat) {
  int total = 0;
  for (var m in movs) {
    if (m.category.toLowerCase()==cat.toLowerCase()) {
      total += m.import;
    }
  }
  return total;
}

int getTotalImportByMovemements(){
  int total = 0;
  for(var mov in movs){
    total += mov.import;  
  }
  return total;
}
 
int getTotalImportByMounth(String mounth){
  int total =0 ;
  for(var m in movs){
    if(getDatetimeFormatted('MMMM', m.dt)==mounth){
      total += m.import;
    }
  }
  return total;
}


String  getDatetimeFormatted(String datePattern, String dateString){
  DateTime dateNow = DateTime.parse(dateString);
  DateFormat dateFormatter = DateFormat(datePattern,'es_ES');
  String dateFormatted = dateFormatter.format(dateNow);
  return dateFormatted;
}

List<Movements> getMovsByCatAndMounth(String cat ){
  List<Movements> movsByCats = movs.where((m) => m.category == cat).toList();
  List<Movements> movsByMounths = movsByCats
          .map((m)=> months.map((e) => getDatetimeFormatted('MMM', m.dt)==e).toList()).cast<Movements>()
          .toList();
   return movsByMounths;
}

int getTotalImporatBNyCategoryAndMounths(String cat, String mounth){
 int total  = 0;

 for(var m in movs){
     if(m.category==cat && getDatetimeFormatted('MMMM', m.dt)==mounth){
         total += m.import;
     }
 }
  return total;
}


Future<List<Movements>> getMovementsByCategoryAndMounth(String cat, String mounth) async {
  List<Movements> movsByCat= movs.where((m) => m.category==cat&& getDatetimeFormatted('MMMM', m.dt)==mounth )
  .toList() ;
  return movsByCat;
}

String getImgByCategory(String cat){
  String img = '';
  switch(cat){

     case 'Compras':
       img = 'assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp';
       break;
    case 'Bares y Restaurantes':
      img ='assets/icons/eclub_icon_resto_violeta_transparente.webp';
      break;
     case 'Transporte':
  img = 'assets/icons/eclub_icon_bus_naranja_transparente_64x64.webp';
  break;
  case 'Entretenimiento':
  img = 'assets/icons/eclub_icon_faces_green.webp';
  break;
case 'Retiros':
img =  'assets/icons/eclub_icon_cajero_fondo_blanco_64x64.webp'; 
break;
  
  case 'Salud':
img ='assets/icons/eclub_icon_health_color_blanco_64x64.webp'; 
break;
  }
  return img;

}



Color getColorByCat(String cat){
  Color customColor = Colors.black;
  switch (cat){
    case 'Retiros':
      customColor = Color(0xFFC3EDD8);
      break;
      case 'Compras':
      customColor = Color.fromARGB(255, 138, 98, 231);
      break;
      case 'Entretenimiento':
      customColor = Color.fromARGB(178, 120, 250, 44);
      break;
      case 'Bares y Restaurantes':
      customColor = Color.fromARGB(255, 207, 133, 236);
      break;
      case 'Transporte':
      customColor = Color.fromARGB(255, 236, 154, 46);
      break;
      case 'Salud':
      customColor = Color.fromARGB(255, 240, 53, 53);
      break;

  }

  return customColor;

}