import 'package:dartz/dartz.dart';
import 'package:spotify/core/usecase/usecase.dart';
import 'package:spotify/data/reopository/song/song_repository_impl.dart';
import 'package:spotify/domain/reopository/song/song_repos.dart';
import 'package:spotify/service_locator.dart';

class GetNewsSongUseCase implements UserCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    //
    return await sl<SongRepository>().getNewsSongs();
  }
}
