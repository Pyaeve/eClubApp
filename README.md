# eClubApp

eClub App Demo(Prueba Tecnica).

## Instalación

### Clonas el Repo

git clone <https://github.com/Pyaeve/eClubApp.git>

### Ejecutas

flutter run -d <device_id>

### Datos y funcionamiento

los datos estan en /Helpers/Samples y son objetos que pueden modificar esto afectara la representacion de los datos

Cada Movimiento tiene
    id
    ref
    fecha/hora
    tipo de trasacción o movimiento
    imagen
    negocio
    categoria
    importe

Ejemplo

Agregar un movimiento de Ingreso a Salario y otro de Gasto en Bares y Restaurantes

````
```dart
List\<Movements> movs = [
    Movements(
      id: 31,
      ref: '1234554345565433',
      type: 'in',
      img: Helper.getImgByCategory('Salario'),
      dt: '2024-03-202 15:33:00',
      business: 'Burguer King',
      category: 'Salario',
      import: 7000000),
    Movements(
      id: 32,
      ref: '1234554345565433',
      type: 'out',
      img: Helper.getImgByCategory('Bares y Restaurantes'),
      dt: '2024-03-26 15:33:00',
      business: 'Burguer King',
      category: 'Bares y Restaurantes',
      import: 250000)]
```
````


lo guardas y Flutter run -d <device_id>
