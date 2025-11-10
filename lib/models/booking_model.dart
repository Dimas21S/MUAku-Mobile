import 'package:carimua/models/artist_model.dart';
import 'package:carimua/models/user_model.dart';

class BookingModel {
  ArtistModel? mua;
  UserModel? user;
  int harga;
  DateTime tanggal;
  String status;

  BookingModel({
    required this.mua,
    required this.user,
    required this.harga,
    required this.tanggal,
    required this.status,
  });

  BookingModel copyWith({
    ArtistModel? mua,
    UserModel? user,
    int? harga,
    DateTime? tanggal,
    String? status,
  }) {
    return BookingModel(
      mua: mua ?? this.mua,
      user: user ?? this.user,
      harga: harga ?? this.harga,
      tanggal: tanggal ?? this.tanggal,
      status: status ?? this.status,
    );
  }
}
