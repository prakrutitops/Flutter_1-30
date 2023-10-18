import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyDb
{

  late Database db;

  Future open() async
  {

    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'tops2.db');
    print(path);
    db = await openDatabase(path,version: 1,onCreate:(Database db, int version) async
    {

      await db.execute('''

                    CREATE TABLE IF NOT EXISTS students( 
                          id primary key auto_increment,
                          name varchar(255) not null,
                          roll_no int not null,
                          address varchar(255) not null
                      );

                      //create more table here
                  
                  ''');
      print("Table Created");
    });

  }

}