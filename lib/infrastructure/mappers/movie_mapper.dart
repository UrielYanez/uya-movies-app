import 'package:uya_movies_app/domain/domain.dart';
import 'package:uya_movies_app/infrastructure/models/moviedb/moviedb_detail.dart';

import '../models/moviedb/moviedb_response.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieDb movieDb) => Movie(
    adult: movieDb.adult,
    backdropPath: (movieDb.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}'
        : 'https://via.placeholder.com/500x750?text=No+Image',
    genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
    id: movieDb.id,
    originalLanguage: movieDb.originalLanguage,
    originalTitle: movieDb.originalTitle,
    overview: movieDb.overview,
    popularity: movieDb.popularity,
    posterPath: (movieDb.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500${movieDb.posterPath}'
        : 'https://via.placeholder.com/500x750?text=No+Image',
    releaseDate: movieDb.releaseDate,
    title: movieDb.title,
    video: movieDb.video,
    voteAverage: movieDb.voteAverage,
    voteCount: movieDb.voteCount,
  );

  static Movie movieDetailToEntity(MovieDbDetail moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
        : 'https://upload.wikimedia.org/wikipedia/commons/0/0a/No-image-available.png',
    genreIds: moviedb.genres.map((e) => e.name).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
        : 'https://upload.wikimedia.org/wikipedia/commons/0/0a/No-image-available.png',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );
}
