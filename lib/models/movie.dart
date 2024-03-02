class Movie {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final String releaseData;
  final double voteAvarage;

  Movie(
      {required this.id,
      required this.title,
      required this.overview,
      required this.posterPath,
      required this.backdropPath,
      required this.releaseData,
      required this.voteAvarage});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'] as int,
        title: json['title'] as String,
        overview: json['overview'] as String,
        posterPath: json['poster_path'] as String,
        backdropPath: json['backdrop_path'] as String,
        releaseData: json['realease_date'] as String,
        voteAvarage: json['vote_avarage'] as double);
  }
}
