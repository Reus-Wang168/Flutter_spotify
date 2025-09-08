import 'package:spotify/domain/entities/song/song.dart';

abstract class NewsSongsState {}

class NewsSongLoading extends NewsSongsState {}

class NewsSongsLoaded extends NewsSongsState {
  final List<SongEntity> songs;
  NewsSongsLoaded(this.songs);
}

class NewsSongsLoadFailture extends NewsSongsState {
  final String message;
  NewsSongsLoadFailture(this.message);
}
