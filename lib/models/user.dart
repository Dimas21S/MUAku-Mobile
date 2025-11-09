class User {
  String nama;
  String email;
  String password;

  User({this.nama = '', this.email = '', this.password = ''});

  User copyWith({String? nama, String? email, String? password}) {
    return User(
      nama: nama ?? this.nama,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
