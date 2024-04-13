import 'package:hive/hive.dart';

part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveType(typeId: 0)
  final String bookId;
  @HiveType(typeId: 1)
  final String? image;
  @HiveType(typeId: 2)
  final String title;
  @HiveType(typeId: 3)
  final String? authorName;
  @HiveType(typeId: 4)
  final num? price;
  @HiveType(typeId: 5)
  final num? rating;

  BookEntity(
    {required this.bookId,
    required this.image,
    required this.title,
    required this.authorName,
    required this.price,
    required this.rating
  });
}
