import 'package:spotify/core/usecase/usecase.dart';
import 'package:spotify/domain/reopository/song/song_repos.dart';
import 'package:spotify/service_locator.dart';

class IsFavoriteSongUseCase implements UserCase<bool, String> {
  @override
  Future<bool> call({String? params}) async {
    return sl<SongRepository>().isFavoriteSong(params!);
  }
}
