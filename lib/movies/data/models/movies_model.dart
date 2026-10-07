import 'package:movies/movies/domain/entities/movie.dart';

class MoviesModel extends Movie {
  const MoviesModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genderId,
    required super.overview,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
      id: json['id'],
      title: json["title"],
      backdropPath: json["backdrop_path"],
      genderId: List<int>.from(json["gender_ids"].map((e)=> e)),
      overview: json["overview"],
      // TODO : CHECK This
      voteAverage: json["vote_average"],
      releaseDate: json["release_date"],
    );
  }
}
