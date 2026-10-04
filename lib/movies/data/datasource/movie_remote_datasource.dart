import 'package:dio/dio.dart';
import 'package:movies/core/error/exceptions.dart';
import 'package:movies/core/network/error_message_model.dart';
import 'package:movies/movies/data/models/movies_model.dart';

class MovieRemoteDatasource {

  Future<List<MoviesModel>> getNowPlayingMovies()async{
   final response =  await Dio().get("https://api.themoviedb.org/3/movie/now_playing?api_key=d98b7013372fb44db9f8d924ada27662");

   if(response.statusCode == 200)
   {
      return List<MoviesModel>.from((response.data["results"] as List).map((e) => MoviesModel.fromJson(e)));
   }

   else{
       throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
   }

  }
}