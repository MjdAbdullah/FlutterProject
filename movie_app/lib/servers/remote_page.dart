import 'package:http/http.dart' as http;
import 'package:movie_app/models/Trending.dart';

class RemoteService {
  Future<List<Trending?.>> getTrending() async{
    var client = http.Client();
    var uri = Uri.parse("https://api.themoviedb.org/3/trending/movie/week?api_key=f04f9e9a3c571703d95ddfbcd68bd568");
    var response = await client.get(uri);

    if(response.statusCode == 200){
      var json = response.body;
      return trendingFromJson(json);
    }
  }
}