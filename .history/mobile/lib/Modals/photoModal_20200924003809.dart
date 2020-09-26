class Photo {
  final int id;
  final String name;
  final String desc;
  final String phone;
  final String img;

  Photo({this.id, this.name, this.desc, this.img, this.phone});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        id: json['id'],
        name: json['nome_companha'],
        desc: json['descricao'],
        img: json['url'],
        phone: json['telefone']);
  }
}
