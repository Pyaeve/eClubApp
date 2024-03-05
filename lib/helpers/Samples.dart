import 'package:eclubapp/models/Movements.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

 List<Movements> movs = [
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
      dt: '2024-01-14 12:33:00',
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
      ref: '12345543455654543',
      img: getImgByCategory('Salud'),
      dt: '2024-01-25 12:33:00',
      business: 'Punto Farma',
      category: 'Salud',
      import: 145000),

      //febrero
      Movements(
      id: 12,
      ref: 'ssadasdasdasd',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
      dt: '2024-02-04 12:33:00',
      business: 'Algun Lisssgar',
      category: 'Bares y Restaurantes',
      import: 145000),
      Movements(
      id: 14,
      ref: '12345543455654543',
      img: getImgByCategory('Salud'),
      dt: '2024-02-05 12:33:00',
      business: 'Punto Farma',
      category: 'Salud',
      import: 145000),
      Movements(
      id: 12,
      ref: 'ssadasdasdasd',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
      dt: '2024-01-04 12:33:00',
      business: 'Ese Lugar',
      category: 'Bares y Restaurantes',
      import: 145000),
      Movements(
      id: 13,
      ref: '12345543455654543',
      img: getImgByCategory('Entretenimiento'),
      dt: '2024-02-01 11:33:00',
      business: 'Netflix',
      category: 'Entretenimiento',
      import: 145000),

       Movements(
      id: 14,
      ref: '12345543455654543',
      img: getImgByCategory('Transporte'),
      dt: '2024-02-05 12:33:00',
      business: 'Bolt',
      category: 'Transporte',
      import: 145000),
     Movements(
      id: 15,
      ref: '12345543455654543',
      img: getImgByCategory('Transporte'),
      dt: '2024-02-05 12:33:00',
      business: 'Uber',
      category: 'Transporte',
      import: 234500),
       Movements(
      id: 15,
      ref: '12345543455654543',
      img: getImgByCategory('Retriros'),
      dt: '2024-02-07 11:33:00',
      business: 'Bancoo Regional',
      category: 'Retiros',
      import: 100000),
       Movements(
      id: 16,
      ref: '12345543455654543',
      img: getImgByCategory('Compras'),
      dt: '2024-02-10 11:33:00',
      business: 'La Chuchi',
      category: 'Compras',
      import: 1250600),
       Movements(
      id: 17,
      ref: '1234554345565433',
      img: getImgByCategory('Salud'),
      dt: '2024-02-12 11:33:00',
      business: 'farmacia Catedral',
      category: 'Salud',
      import: 100000),
       Movements(
      id: 18,
      ref: '1234554345565433',
      img: getImgByCategory('Salud'),
      dt: '2024-02-15 11:33:00',
      business: 'farmacia Catedral',
      category: 'Salud',
      import: 100000),
   Movements(
      id: 19,
      ref: '1234554345565433',
      img: getImgByCategory('Salud'),
      dt: '2024-02-25 11:33:00',
      business: 'farmacia Catedral',
      category: 'Salud',
      import: 105000),
         Movements(
      id: 20,
      ref: '1234554345565433',
      img: getImgByCategory('Entretenimiento'),
      dt: '2024-03-01 11:33:00',
      business: 'DirectTV',
      category: 'Entretenimiento',
      import: 250000),
         Movements(
      id: 21,
      ref: '1234554345565433',
      img: getImgByCategory('Transporte'),
      dt: '2024-03-06 11:33:00',
      business: 'Uber',
      category: 'Transporte',
      import: 105000),
         Movements(
      id: 22,
      ref: '1234554345565433',
      img: getImgByCategory('Bares y Restaurantes'),
      dt: '2024-03-09 15:33:00',
      business: 'Burguer King',
      category: 'Bares y Restaurantes',
      import: 205000),
         Movements(
      id: 23,
      ref: '1234554345565433',
      img: getImgByCategory('Salud'),
      dt: '2024-03-15 11:33:00',
      business: 'farmacia Catedral',
      category: 'Salud',
      import: 1050050),
         Movements(
      id: 24,
      ref: '1234554345565433',
      img: getImgByCategory('Retiros'),
      dt: '2024-03-16 11:33:00',
      business: 'Banco Regional',
      category: 'Retiros',
      import: 234000),
         Movements(
      id: 25,
      ref: '1234554345565433',
      img: getImgByCategory('Compras'),
      dt: '2024-03-18 11:33:00',
      business: 'Stock',
      category: 'Compras',
      import: 605000),
         Movements(
      id: 26,
      ref: '1234554345565433',
      img: getImgByCategory('Entretenimiento'),
      dt: '2024-03-15 11:33:00',
      business: 'Netflix',
      category: 'Entretenimiento',
      import: 105000),
         Movements(
      id: 27,
      ref: '1234554345565433',
      img: getImgByCategory('Compras'),
      dt: '2024-03-15 11:33:00',
      business: 'Vizarro',
      category: 'Compras',
      import: 305000),
         Movements(
      id: 28,
      ref: '1234554345565433',
      img: getImgByCategory('Salud'),
      dt: '2024-03-22 13:33:00',
      business: 'farmacia Catedral',
      category: 'Salud',
      import: 15000),
         Movements(
      id: 29,
      ref: '1234554345565433',
      img: getImgByCategory('Transporte'),
      dt: '2024-03-25 11:22:00',
      business: 'Uber',
      category: 'Transporte',
      import: 105000),

          Movements(
      id: 30,
      ref: '1234554345565433',
      img: getImgByCategory('Bares y Restaurantes'),
      dt: '2024-03-26 15:33:00',
      business: 'Burguer King',
      category: 'Bares y Restaurantes',
      import: 250000)

];

List<Color> colores = [Colors.amber, Colors.deepPurple,Colors.blue, Colors.blueAccent, Colors.green, Colors.deepPurple];
List<String> cats =['Entretenimiento','Bares y Restaurantes','Compras','Transporte','Salud','Retiros','Ingresos']; 
  
List<String> imgs =['assets/icons/eclub_icon_resto_violeta_transparente.webp','assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp','assets/icons/eclub_icon_bus_naranja_transparente_64x64.webp','','',''];
List<String> months =['enero','febrero','marzo','abril','mayo','junio','julio','agosto','septimembre','octubre','noviembre','diciembre'];

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
          .map((m)=> months.map((e) => getDatetimeFormatted('MMMM', m.dt)==e).toList()).cast<Movements>()
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
      img =  'assets/icons/eclub_icon_cajero_fondo_transparente_64x64.webp'; 

break;
  
  case 'Salud':
img ='assets/icons/eclub_icon_health_color_transparent_64x64.webp'; 
break;
  }
  return img;

}

Color getColorByCategory(String cat){
  Color customColor = Colors.black;
  switch (cat){
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
      customColor = const Color.fromARGB(183, 245, 29, 29);
      break;

  }

  return customColor;

}