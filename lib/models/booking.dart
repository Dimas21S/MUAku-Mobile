import 'package:carimua/models/artist.dart';
import 'package:carimua/models/user.dart';

class Booking {
  MakeUpArtist mua;
  User user;
  int harga;
  DateTime tanggal;
  String status;

  Booking({
    required this.mua,
    required this.user,
    required this.harga,
    required this.tanggal,
    required this.status,
  });

  Booking copyWith({
    MakeUpArtist? mua,
    User? user,
    int? harga,
    DateTime? tanggal,
    String? status,
  }) {
    return Booking(
      mua: mua ?? this.mua,
      user: user ?? this.user,
      harga: harga ?? this.harga,
      tanggal: tanggal ?? this.tanggal,
      status: status ?? this.status,
    );
  }
}
