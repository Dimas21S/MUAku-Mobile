class UserModel {
  String nama;
  String email;
  String password;

  UserModel({this.nama = '', this.email = '', this.password = ''});

  UserModel copyWith({String? nama, String? email, String? password}) {
    return UserModel(
      nama: nama ?? this.nama,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
