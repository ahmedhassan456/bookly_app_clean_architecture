import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

import '../../../../core/utils/functions/save_books_locally.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0});
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {

  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async{
    var data = await apiService.get(endPoint: 'volumes?q=programming&filtering=free-ebooks&startIndex=${pageNumber*10}');

    List<BookEntity> books = getBooksList(data);

    saveBooksDataLocally(books, kFeaturedBox);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0}) async{
    var data = await apiService.get(endPoint: 'volumes?q=programming&filtering=free-ebooks&sorting=newest&startIndex=${pageNumber*10}');

    List<BookEntity> newestBooks = getBooksList(data);

    saveBooksDataLocally(newestBooks, kNewestBox);

    return newestBooks;
  }


  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

}