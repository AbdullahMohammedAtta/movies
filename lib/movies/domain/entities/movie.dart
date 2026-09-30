class Movie {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genderId;
  final String overview;
  final double voteAverage;

  Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genderId,
    required this.overview,
    required this.voteAverage,
  });
}
