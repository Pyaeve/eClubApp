// ignore_for_file: file_names
import '../helpers/Helper.dart';
import 'package:eclubapp/models/Movements.dart';

//lista de Movimientos
List<Movements> movs = [
  Movements(
      id: 1,
      ref: '32432432l;j323',
      type: 'in',
      img: Helper.getImgByCategory('Entretenimiento'),
      dt: '2024-01-03 08:00:00',
      business: 'Internet',
      category: 'Entretenimiento',
      import: 10000000),
  Movements(
      id: 2,
      ref: '12321312312312321',
      type: 'out',
      img: Helper.getImgByCategory('Compras'),
      dt: '2024-01-02 10:00:00',
      business: 'RESTO YA',
      category: 'Compras',
      import: 200000),
  Movements(
      id: 3,
      ref: '213213213123123',
      type: 'out',
      img: 'assets/icons/eclub_icon_bus_naranja_transparente_64x64.webp',
      dt: '2024-01-02 12:00:00',
      business: 'RESTO YA',
      category: 'Transporte',
      import: 100000),
  Movements(
      id: 4,
      ref: '2133232332213',
      type: 'out',
      img: Helper.getImgByCategory('Transporte'),
      dt: '2024-01-03 08:00:00',
      business: 'Uber',
      category: 'Transporte',
      import: 100000),
  Movements(
      id: 5,
      ref: '3345222344',
      type: 'out',
      img: Helper.getImgByCategory('Compras'),
      dt: '2024-01-03 09:00:00',
      business: 'Algun Ligar',
      category: 'Compras',
      import: 100000),
  Movements(
      id: 6,
      ref: '12312321323332w',
      type: 'out',
      img:
          'assets/icons/eclub_icon_shopping_basket_fullcolor_transparent_64x64.webp',
      dt: '2024-01-04 14:00:00',
      business: 'Algun Lugar',
      category: 'Compras',
      import: 100000),
  Movements(
      id: 7,
      ref: 'ssadasdasdasd',
      type: 'out',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
      dt: '2024-01-04 12:33:00',
      business: 'Algun Lugar',
      category: 'Bares y Restaurantes',
      import: 145000),
  Movements(
      id: 8,
      ref: '3457564323434',
      type: 'out',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
      dt: '2024-01-22 12:33:00',
      business: 'Banco Regional',
      category: 'Retiros',
      import: 500000),
  Movements(
      id: 9,
      ref: '1233243243434',
      type: 'out',
      img: Helper.getImgByCategory('Entretenimiento'),
      dt: '2024-01-24 12:33:00',
      business: 'Playstation Network',
      category: 'Entretenimiento',
      import: 245000),
  Movements(
      id: 10,
      ref: 'ssadasdasdasd',
      type: 'out',
      img: Helper.getImgByCategory('Salud'),
      dt: '2024-01-23 12:33:00',
      business: 'Punto Farma',
      category: 'Salud',
      import: 145000),

  Movements(
      id: 11,
      ref: 'ssadasdasdasd',
      type: 'out',
      img: Helper.getImgByCategory('Entretenimiento'),
      dt: '2024-01-14 12:33:00',
      business: 'Internet',
      category: 'Entretenimiento',
      import: 145000),
  Movements(
      id: 12,
      ref: 'ssadasdasdasd',
      type: 'out',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
      dt: '2024-01-24 12:33:00',
      business: 'Algun Lugar',
      category: 'Bares y Restaurantes',
      import: 145000),
  Movements(
      id: 13,
      ref: '12345543455654543',
      type: 'out',
      img: Helper.getImgByCategory('Salud'),
      dt: '2024-01-25 12:33:00',
      business: 'Punto Farma',
      category: 'Salud',
      import: 145000),

  //febrero
  Movements(
      id: 12,
      ref: 'ssadasdasdasd',
      type: 'in',
      img: Helper.getImgByCategory('Salario'),
      dt: '2024-02-01 12:33:00',
      business: 'Algun Lugar',
      category: 'Salario',
      import: 10000000),
  Movements(
      id: 14,
      ref: '12345543455654543',
      type: 'out',
      img: Helper.getImgByCategory('Salud'),
      dt: '2024-02-05 12:33:00',
      business: 'Punto Farma',
      category: 'Salud',
      import: 145000),
  Movements(
      id: 12,
      ref: 'ssadasdasdasd',
      type: 'out',
      img: 'assets/icons/eclub_icon_resto_violeta_transparente.webp',
      dt: '2024-01-04 12:33:00',
      business: 'Ese Lugar',
      category: 'Bares y Restaurantes',
      import: 145000),
  Movements(
      id: 13,
      ref: '12345543455654543',
      type: 'out',
      img: Helper.getImgByCategory('Entretenimiento'),
      dt: '2024-02-01 11:33:00',
      business: 'Netflix',
      category: 'Entretenimiento',
      import: 145000),

  Movements(
      id: 14,
      ref: '12345543455654543',
      type: 'out',
      img: Helper.getImgByCategory('Transporte'),
      dt: '2024-02-05 12:33:00',
      business: 'Bolt',
      category: 'Transporte',
      import: 145000),
  Movements(
      id: 15,
      ref: '12345543455654543',
      type: 'out',
      img: Helper.getImgByCategory('Transporte'),
      dt: '2024-02-05 12:33:00',
      business: 'Uber',
      category: 'Transporte',
      import: 234500),
  Movements(
      id: 15,
      ref: '12345543455654543',
      type: 'out',
      img: Helper.getImgByCategory('Retriros'),
      dt: '2024-02-07 11:33:00',
      business: 'Banco Regional',
      category: 'Retiros',
      import: 100000),
  Movements(
      id: 16,
      ref: '12345543455654543',
      type: 'out',
      img: Helper.getImgByCategory('Compras'),
      dt: '2024-02-10 11:33:00',
      business: 'La Chuchi',
      category: 'Compras',
      import: 1250600),
  Movements(
      id: 17,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Salud'),
      dt: '2024-02-12 11:33:00',
      business: 'farmacia Catedral',
      category: 'Salud',
      import: 100000),
  Movements(
      id: 18,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Salud'),
      dt: '2024-02-15 11:33:00',
      business: 'Farmacia Catedral',
      category: 'Salud',
      import: 100000),
  Movements(
      id: 19,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Salud'),
      dt: '2024-02-25 11:33:00',
      business: 'Farmacia Catedral',
      category: 'Salud',
      import: 105000),
  Movements(
      id: 20,
      ref: '1234554345565433',
      type: 'in',
      img: Helper.getImgByCategory('Salario'),
      dt: '2024-03-01 11:33:00',
      business: 'Banco Regional',
      category: 'Salario',
      import: 10000000),
  Movements(
      id: 21,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Transporte'),
      dt: '2024-03-06 11:33:00',
      business: 'Uber',
      category: 'Transporte',
      import: 105000),
  Movements(
      id: 22,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Bares y Restaurantes'),
      dt: '2024-03-09 15:33:00',
      business: 'Burguer King',
      category: 'Bares y Restaurantes',
      import: 205000),
  Movements(
      id: 23,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Salud'),
      dt: '2024-03-15 11:33:00',
      business: 'farmacia Catedral',
      category: 'Salud',
      import: 1050050),
  Movements(
      id: 24,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Retiros'),
      dt: '2024-03-16 11:33:00',
      business: 'Banco Regional',
      category: 'Retiros',
      import: 234000),
  Movements(
      id: 25,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Compras'),
      dt: '2024-03-18 11:33:00',
      business: 'Stock',
      category: 'Compras',
      import: 605000),
  Movements(
      id: 26,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Entretenimiento'),
      dt: '2024-03-15 11:33:00',
      business: 'Netflix',
      category: 'Entretenimiento',
      import: 105000),
  Movements(
      id: 27,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Compras'),
      dt: '2024-03-15 11:33:00',
      business: 'Vizarro',
      category: 'Compras',
      import: 305000),
  Movements(
      id: 28,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Salud'),
      dt: '2024-03-22 13:33:00',
      business: 'Farmacia Catedral',
      category: 'Salud',
      import: 15000),
  Movements(
      id: 29,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Transporte'),
      dt: '2024-03-25 11:22:00',
      business: 'Uber',
      category: 'Transporte',
      import: 105000),

  Movements(
      id: 30,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Bares y Restaurantes'),
      dt: '2024-03-26 15:33:00',
      business: 'Burguer King',
      category: 'Bares y Restaurantes',
      import: 250000),
  Movements(
      id: 31,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Bares y Restaurantes'),
      dt: '2024-02-26 15:33:00',
      business: 'Burguer King',
      category: 'Bares y Restaurantes',
      import: 250000)
];
