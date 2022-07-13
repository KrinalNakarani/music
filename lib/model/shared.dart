import 'package:shared_preferences/shared_preferences.dart';

class share {
  List l1 = [];

  void createSHRP(String? email,String? passward) async {
    var Sh = await SharedPreferences.getInstance();
    Sh.setString("e1", email!);
    Sh.setString("p1", passward!);
  }
  Future<List> readSHRP()async{
    var Sh = await SharedPreferences.getInstance();
    var email = Sh.getString("e1");
    var passward = Sh.getString("p1");

    l1.add(email);
    l1.add(passward);
    return l1;
  }
}
