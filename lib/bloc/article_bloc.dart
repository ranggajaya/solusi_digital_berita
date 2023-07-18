import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solusi_digital_berita/models/articles_model.dart';
import 'package:http/http.dart' as http;

part 'article_event.dart';
part 'article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleBloc() : super(ArticleInitial()) {
    on<GetArticleEvent>((event, emit) async {
      emit(ArticleLoading());
      final response = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5f6026fd15d54fb2a2dbfa4e330e12ee'));

      print(response.body);
      emit(ArticleSuccess(article: articlesFromJson(response.body)));
    });
  }
}
