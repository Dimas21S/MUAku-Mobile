import 'package:carimua/models/artist_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtistNotifier extends Notifier<ArtistModel> {
  @override
  ArtistModel build() {
    return ArtistModel();
  }
}

final artistProvider = NotifierProvider<ArtistNotifier, ArtistModel>(() {
  return ArtistNotifier();
});
