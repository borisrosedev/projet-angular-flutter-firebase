import '../mixins/crud.dart';
import 'User.dart';

/** la classe UserAdmin étend la classe-mère User autrement dit elle hérite de la classe User
Elle hérite de ses attributs et de son comportement (ses méthodes)
*/
class UserAdmin extends User with Crud {
  /** firstname et lastname sont facultatifs vu le constructeur de la classe User
  mais étant donné qu'ils peuvent être passés au constructeur de la classe UserAdmin 
  il faut appeler le constructeur de la classe parent (User) via super et lui transmettre les valeurs en question
  */
  final String? token = "";

  const UserAdmin({required email, required password, firstname, lastname})
      : super(
            email: email,
            password: password,
            firstname: firstname,
            lastname: lastname);

  void deleteTask(String docId) {
    // appel à la méthode delete de la mixin Crud
    delete('tasks', docId, null);
  }
}
