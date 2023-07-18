part of 'article_bloc.dart';

abstract class ArticleState {}

class ArticleInitial extends ArticleState {}

class ArticleLoading extends ArticleState {}

class ArticleSuccess extends ArticleState {
  final List<Article> article;
  ArticleSuccess({required this.article});
}
