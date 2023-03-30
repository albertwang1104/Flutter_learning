import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';

class MongoDataBase {
  static connectDB() async{
    var db = await Db.create("mongodb://mongoadmin:passwd@140.115.26.115:27017/testdb?authSource=admin");
    await db.open();
    inspect(db);
    var profile = db.collection('testprofile');
  }
}