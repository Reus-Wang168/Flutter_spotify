import 'package:dartz/dartz.dart';
import 'package:spotify/core/usecase/usecase.dart';
import 'package:spotify/domain/reopository/song/song_repos.dart';
import 'package:spotify/service_locator.dart';

class AddOrRemoveFavoriteSongUseCase implements UserCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await sl<SongRepository>().addOrRemoveFavouriteSong(params!);
  }
}
