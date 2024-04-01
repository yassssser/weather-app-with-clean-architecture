import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/core/constants/constants.dart';
import 'package:weather_app/features/daily_news/data/models/article.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsApiBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKeys") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}
