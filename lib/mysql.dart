
import 'package:mysql1/mysql1.dart';

class Mysql{
  static String host="localhost",
                user="root",
                password="12345",
                db="fkdemo";

  static int port=3306;
  Mysql();

  Future<MySqlConnection> getConnection() async{
    var settings=new ConnectionSettings(
      host: host,
      db: db,
      password: password,
      port: port,
      user: user,
    );
    return await MySqlConnection.connect(settings);

  }

}