class User {
  final String name;
  final String date;
  final String email;

  User({this.name,this.email, this.date});

  factory User.fromJson(json) {

    return User(
      name: json[0]['name'],
      email: json[0]['email'],
      date: json[0]['data']
    );
  }
}