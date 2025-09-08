import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/common/bloc/favourite_btn/favourite_btn_state.dart';
import 'package:spotify/domain/usercases/song/add_or_remove_favourite_song.dart';
import 'package:spotify/service_locator.dart';

class FavoriteBtnCubit extends Cubit<FavouriteBtnState> {
  FavoriteBtnCubit() : super(FavouriteBtnInitial());

  void favouriteBtnUpdated(String songId) async {
    var result =
        await sl<AddOrRemoveFavoriteSongUseCase>().call(params: songId);
    result.fold((l) {}, (isFavorite) {
      emit(FavouriteBtnUpdate(isFavorite: isFavorite));
      // handle error
    });
  }
}
