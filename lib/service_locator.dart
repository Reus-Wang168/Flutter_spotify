import 'package:get_it/get_it.dart';
import 'package:spotify/data/reopository/auth/auth_repository_impl.dart';
import 'package:spotify/data/reopository/song/song_repository_impl.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/data/sources/songs/song_service.dart';
import 'package:spotify/domain/reopository/auth/auth_repos.dart';
import 'package:spotify/domain/reopository/song/song_repos.dart';
import 'package:spotify/domain/usercases/auth/signin.dart';
import 'package:spotify/domain/usercases/auth/signup.dart';
import 'package:spotify/domain/usercases/song/add_or_remove_favourite_song.dart';
import 'package:spotify/domain/usercases/song/get_news_songs.dart';
import 'package:spotify/domain/usercases/song/get_playlist.dart';
import 'package:spotify/domain/usercases/song/is_favourite_song.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<SongFirebaseService>((SongFirebaseServiceImpl()));

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SongRepository>(SongRepositoryImpl());

  sl.registerSingleton<SignupUserCase>(SignupUserCase());

  sl.registerSingleton<SigninUserCase>(SigninUserCase());

  sl.registerSingleton<GetNewsSongUseCase>(GetNewsSongUseCase());

  sl.registerSingleton<GetPlayListUseCase>(GetPlayListUseCase());

  sl.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
      AddOrRemoveFavoriteSongUseCase());

  sl.registerSingleton<IsFavoriteSongUseCase>(IsFavoriteSongUseCase());
}
