import 'package:eclubapp/models/Movements.dart';
import 'package:intl/intl.dart';

final List<Movements> movs = [

    Movements(
      id: 1, 
      ref: '32432432l;j323',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
       dt: '17/02/2024', 
       business: 'RESTO YA',
        category: 'Bares y restaurantes', 
        import: 250000
       
    ),
    Movements(
      id: 2, 
      ref: '12321312312312321',
      img: 'assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp',
       dt: '15/02/2024', 
       business: 'RESTO YA',
        category: 'Compras', 
        import: 200000
       
    ),
    
    Movements(
      id: 3, 
      ref: '213213213123123',
      img: 'assets/icons/eclub_icon_bus_naranja_transparente_64x64.webp',
       dt: '14/02/2024', 
       business: 'RESTO YA',
        category: 'Transporte', 
        import: 100000
       
    ),
     Movements(
      id: 4, 
      ref: '2133232332213',
      img: 'assets/icons/eclub_icon_bus_naranja_transparente_64x64.webp',
       dt: '14/02/2024', 
       business: 'Uber',
        category: 'Transporte', 
        import: 100000
       
    ),
    Movements(
      id: 5, 
      ref: '3345222344',
      img: 'assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp',
       dt: '14/02/2024', 
       business: 'Algun Ligar',
        category: 'Compras', 
        import: 100000
       
    ),
    Movements(
      id: 6, 
      ref: '12312321323332w',
      img: 'assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp',
       dt: '14/02/2024', 
       business: 'Algun Lisssgar',
        category: 'Compras', 
        import: 100000
       
    ),
Movements(
      id: 7, 
      ref: 'ssadasdasdasd',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
       dt: '14/02/2024', 
       business: 'Algun Lisssgar',
        category: 'Bares y Restaurantes', 
        import: 145000
       
    ),

];

int getTotalIMportByCategory(String category){
  return 0;
}