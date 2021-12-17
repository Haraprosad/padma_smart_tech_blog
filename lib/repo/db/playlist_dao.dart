// import 'dart:async';

// import 'package:injectable/injectable.dart';
// import 'package:sembast/sembast.dart';

// @lazySingleton
// class PlaylistDao {
//   Future<Database> _db;

//   PlaylistDao(MyDatabase _database) {
//     _db = _database.database;
//   }

//   static const String folderName = "playlist";
//   final StoreRef _booksFolder = intMapStoreFactory.store(folderName);

//   Future<int> insertPlayListModel(PlaylistModel model) async {
//     var res = await _booksFolder.add(await _db, model.toJson());
//     return res != null && res.toString().isNotEmpty ? 1 : -1;
//   }

//   Future insertOrUpdate(PlaylistModel article) async {
//     var res = await _booksFolder
//         .record(article.id)
//         .put(await _db, article.toJson(), merge: true);

//     return res;
//   }

//   Future<int> count() async {
//     return _booksFolder.count(await _db);
//   }

//   Future updatePlayListModel(PlaylistModel article) async {
//     final finder = Finder(filter: Filter.equals("id", article.id));
//     await _booksFolder.update(await _db, article.toJson(), finder: finder);
//   }

//   Future delete(PlaylistModel article) async {
//     final finder = Finder(filter: Filter.equals("id", article.id));
//     var res = _booksFolder.delete(await _db, finder: finder);
//     return res;
//   }

//   Future removeAll() async {
//     return await _booksFolder.delete(await _db);
//   }

//   Future<PlaylistModel> getSingleArticle(int id) async {
//     final finder = Finder(filter: Filter.equals("id", id));
//     final snapshot = await _booksFolder.findFirst(await _db, finder: finder);

//     if (snapshot != null) {
//       return PlaylistModel.fromJson(snapshot.value);
//     }
//     return null;
//   }

//   Future<bool> checkArticleExists(int id) async {
//     final finder = Finder(filter: Filter.equals("id", id));
//     final snapshot = await _booksFolder.findFirst(await _db, finder: finder);
//     return snapshot != null;
//   }

//   Future<List<PlaylistModel>> getAllPlayListModel() async {
//     final recordSnapshot = await _booksFolder.find(await _db);
//     var list = recordSnapshot.map((snapshot) {
//       final books = PlaylistModel.fromJson(snapshot.value);
//       return books;
//     }).toList();

//     return list;
//   }

//   Future<Stream<RecordSnapshot>> getAllPlayListModelStream() async {
//     return _booksFolder.stream(await _db);
//   }
// }
