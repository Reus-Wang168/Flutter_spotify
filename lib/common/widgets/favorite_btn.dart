import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/common/bloc/favourite_btn/favourite_btn_state.dart';
import 'package:spotify/common/bloc/favourite_btn/favourte_btn._cubit.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/domain/entities/song/song.dart';

class FavoriteBtn extends StatelessWidget {
  final SongEntity song;
  const FavoriteBtn({required this.song, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => FavoriteBtnCubit(),
        child: BlocBuilder<FavoriteBtnCubit, FavouriteBtnState>(
          builder: (context, state) {
            if (state is FavouriteBtnInitial) {
              return IconButton(
                  onPressed: () {
                    context
                        .read<FavoriteBtnCubit>()
                        .favouriteBtnUpdated(song.songId);
                  },
                  icon: Icon(
                    song.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_outline_outlined,
                    size: 25,
                    color: AppColors.darkGrey,
                  ));
            }
            if (state is FavouriteBtnUpdate) {
              return IconButton(
                  onPressed: () {
                    context
                        .read<FavoriteBtnCubit>()
                        .favouriteBtnUpdated(song.songId);
                  },
                  icon: Icon(
                    state.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_outline_outlined,
                    size: 25,
                    color: AppColors.darkGrey,
                  ));
            }
            return Container();
          },
        ));
  }
}
