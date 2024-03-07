// ignore_for_file: file_names

class Movements {
  int id;
  String type;
  String ref;

  String img;
  String dt;
  String business;
  String category;
  int import;

  Movements({
    required this.id,
    required this.ref,
    required this.type,
    required this.img,
    required this.dt,
    required this.business,
    required this.category,
    required this.import,
  });
}
