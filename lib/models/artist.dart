class MakeUpArtist {
  String nama;
  String email;
  String password;
  String lokasi;
  String deskripsi;
  String kategori;

  MakeUpArtist({
    this.nama = '',
    this.email = '',
    this.password = '',
    this.lokasi = '',
    this.deskripsi = '',
    this.kategori = '',
  });

  MakeUpArtist copyWith({
    String? nama,
    String? email,
    String? password,
    String? lokasi,
    String? deskripsi,
    String? kategori,
  }) {
    return MakeUpArtist(
      nama: nama ?? this.nama,
      email: email ?? this.email,
      password: password ?? this.password,
      lokasi: lokasi ?? this.lokasi,
      deskripsi: deskripsi ?? this.deskripsi,
      kategori: kategori ?? this.kategori,
    );
  }
}
