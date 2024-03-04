import 'package:eclubapp/models/Movements.dart';
import 'package:intl/intl.dart';

final List<Movements> movs = [
  Movements(
      id: 1,
      ref: '32432432l;j323',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
      dt: '2024-01-01 10:00:00',
      business: 'RESTO YA',
      category: 'Bares y restaurantes',
      import: 250000),
  Movements(
      id: 2,
      ref: '12321312312312321',
      img:
          'assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp',
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
      img: 'assets/icons/eclub_icon_bus_naranja_transparente_64x64.webp',
      dt: '2024-01-03 08:00:00',
      business: 'Uber',
      category: 'Transporte',
      import: 100000),
  Movements(
      id: 5,
      ref: '3345222344',
      img:
          'assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp',
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
];


List<String> cats =['Bares y Restaurantes','Compras','Transporte','Salud','Retiros','Ingresos']; 
List<String> months =['enero','febrero','marzo','abril','mayo','junio','julio','agosto','',''];
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

List<Movements> getMountsByCategory(String cat ){
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

  }
  return img;

}