import 'package:carimua/models/booking_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookingNotifier extends Notifier<BookingModel> {
  @override
  BookingModel build() {
    return BookingModel(
      mua: null,
      user: null,
      harga: 0,
      tanggal: DateTime.now(),
      status: '',
    );
  }
}

final bookingProvider = NotifierProvider<BookingNotifier, BookingModel>(() {
  return BookingNotifier();
});
