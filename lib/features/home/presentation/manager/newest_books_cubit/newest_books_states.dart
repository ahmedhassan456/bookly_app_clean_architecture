part of 'newest_books_cubit.dart';

abstract class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksPaginationLoading extends NewestBooksState {}
final class NewestBooksSuccess extends NewestBooksState {
  final List<BookEntity> books;
  NewestBooksSuccess(this.books);
}
final class NewestBooksFailure extends NewestBooksState {
  final String message;
  NewestBooksFailure(this.message);
}
final class NewestBooksPaginationFailure extends NewestBooksState {
  final String message;
  NewestBooksPaginationFailure(this.message);
}
