class Movie {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final String releaseDate;
  final double voteAvarage;

  Movie(
      {required this.id,
      required this.title,
      required this.overview,
      required this.posterPath,
      required this.backdropPath,
      required this.releaseDate,
      required this.voteAvarage});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'] ?? 0,
        title: json['title'] ?? '',
        overview: json['overview'] ?? '',
        posterPath: json['poster_path'] ?? '',
        backdropPath: json['backdrop_path'],
        releaseDate: json['realease_date'] ?? '',
        voteAvarage: json['vote_avarage'] ?? '0.0' as double);
  }
}
