import 'package:dartz/dartz.dart';
import 'package:movies/core/error/exceptions.dart';
import 'package:movies/core/error/failure.dart';
import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseMoviesRepository baseMoviesRepository;

  MoviesRepository(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async{
    final result = await baseMoviesRepository.getNowPlayingMovies();
   try{
       return Right(result as List<Movie>);
      } on ServerException catch(failure)
      {
           return Left(ServerFailure(failure.errorMessageModel.statusMessage));
      }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies()async{
    final result = await baseMoviesRepository.getPopularMovies();
    try{
      return Right(result as List<Movie>);
    } on ServerException catch(failure)
    {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies()async{
    final result = await baseMoviesRepository.getTopRatedMovies();
    try{
      return Right(result as List<Movie>);
    } on ServerException catch(failure)
    {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }


  }