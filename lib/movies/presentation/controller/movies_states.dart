import 'package:equatable/equatable.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/movies/domain/entities/movie.dart';

class MoviesStates extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestStates nowPlayingStates;
  final String message;

  const MoviesStates({
     this.nowPlayingMovies = const [],
     this.nowPlayingStates = RequestStates.loading,
     this.message = '',
  });

  @override
  List<Object?> get props => [
    nowPlayingMovies,
    nowPlayingStates,
    message,
  ];
}
