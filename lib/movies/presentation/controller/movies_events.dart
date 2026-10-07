import 'package:equatable/equatable.dart';

abstract class MoviesEvents extends Equatable{
  MoviesEvents();
  @override

  List<Object?> get props => [];
}


class GetNowPlayingMoviesEvent extends MoviesEvents{}
class GetPopularMoviesEvent extends MoviesEvents{}
class GetTopRaterMoviesEvent extends MoviesEvents{}