abstract class FavouriteBtnState {}

class FavouriteBtnInitial extends FavouriteBtnState {}

class FavouriteBtnUpdate extends FavouriteBtnState {
  final bool isFavorite;

  FavouriteBtnUpdate({required this.isFavorite});
}
