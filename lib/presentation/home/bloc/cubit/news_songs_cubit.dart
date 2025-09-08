import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/domain/usercases/song/get_news_songs.dart';
import 'package:spotify/presentation/home/bloc/cubit/news_songs_state.dart';

import 'package:spotify/service_locator.dart';

class NewssongsCubit extends Cubit<NewsSongsState> {
  NewssongsCubit() : super(NewsSongLoading());

  Future<void> getNewsSongs() async {
    print('getNewsSongs');
    var songs = await sl<GetNewsSongUseCase>().call();

    songs.fold((l) {
      print(l.toString());
      emit(NewsSongsLoadFailture(l.toString()));
    }, (data) {
      print('getNewsSongs Success');
      emit(NewsSongsLoaded(data));
    });
  }
}
