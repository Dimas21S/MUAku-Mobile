class ArtistModel {
  String nama;
  String email;
  String password;
  String lokasi;
  String deskripsi;
  String kategori;

  ArtistModel({
    this.nama = '',
    this.email = '',
    this.password = '',
    this.lokasi = '',
    this.deskripsi = '',
    this.kategori = '',
  });

  ArtistModel copyWith({
    String? nama,
    String? email,
    String? password,
    String? lokasi,
    String? deskripsi,
    String? kategori,
  }) {
    return ArtistModel(
      nama: nama ?? this.nama,
      email: email ?? this.email,
      password: password ?? this.password,
      lokasi: lokasi ?? this.lokasi,
      deskripsi: deskripsi ?? this.deskripsi,
      kategori: kategori ?? this.kategori,
    );
  }
}
