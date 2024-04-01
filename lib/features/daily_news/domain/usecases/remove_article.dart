import 'package:weather_app/core/usecaces/usecase.dart';
import 'package:weather_app/features/daily_news/domain/entities/article.dart';
import 'package:weather_app/features/daily_news/domain/repository/article_repository.dart';

class RemoveArticleUseCase implements UseCase<void, ArticleEntity> {
  final ArticleRepository _articleRepository;

  RemoveArticleUseCase(this._articleRepository);

  @override
  Future<void> call({ArticleEntity? params}) {
    return _articleRepository.removeArticle(params!);
  }
}
