import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/domain/usercases/song/get_playlist.dart';
import 'package:spotify/presentation/home/bloc/play_list_state.dart';

import 'package:spotify/service_locator.dart';

class PlayListCubit extends Cubit<PlayListState> {
  PlayListCubit() : super(PlayListLoading());

  // GetPlayListUseCase getPlayListUseCase = GetPlayListUseCase();
  // GetNewsSongsUseCase getNewsSongsUseCase = GetNewsSongsUseCase();

  Future<void> getPlayList() async {
    print('getNewsSongs');
    var songs = await sl<GetPlayListUseCase>().call();

    songs.fold((l) {
      print(l.toString());
      emit(PlayListLoadFailture());
    }, (data) {
      print('getNewsSongs Success');
      emit(PlayListLoaded(data));
    });
  }
}
