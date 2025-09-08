import 'package:dartz/dartz.dart';
import 'package:spotify/data/sources/songs/song_service.dart';
import 'package:spotify/domain/reopository/song/song_repos.dart';
import 'package:spotify/service_locator.dart';

class SongRepositoryImpl extends SongRepository {
  @override
  Future<Either> getNewsSongs() async {
    return await sl<SongFirebaseService>().getNewsSongs();
  }

  @override
  Future<Either> getPlayList() async {
    // TODO: implement getPlayList
    return await sl<SongFirebaseService>().getPlayList();
  }

  @override
  Future<Either> addOrRemoveFavouriteSong(String songId) async {
    // TODO: implement addOrRemoveFavouriteSong
    return await sl<SongFirebaseService>().addOrRemoveFavouriteSong(songId);
  }

  @override
  Future<Either> getUserFavoriteSongs() {
    // TODO: implement getUserFavoriteSongs
    throw UnimplementedError();
  }

  @override
  Future<bool> isFavoriteSong(String songId) {
    // TODO: implement isFavoriteSong
    throw UnimplementedError();
  }
}
