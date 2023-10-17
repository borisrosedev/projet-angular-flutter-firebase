//On va imaginer qu'il s'agit d'une classe mère
import '../interfaces/Auth.dart';
import '../mixins/crud.dart';

class User with Crud implements Auth {
  /** vous déclarez ici deux attributs/propriétés/membres nullables (firstname, lastname)
  final est un des deux types dynamiques de Dart , l'autre étant dynamic
  en utilisant final vous déclarez comme définitif le type des attributs firstname et lastname  */
  final String? firstname;
  final String? lastname;
  final String email;
  final String password;
  // par conséquent vous pouvez rendre constant le constructeur lui-même
  const User(
      {required this.email,
      required this.password,
      this.firstname,
      this.lastname});
  // vous définissez ici un comportement ou si vous préférez une méthode
  showUserInfo() {
    /** vous n'êtes pas obligé(e) de mettre le void , 
    l'inférence agit également sur les fonctions via le type dynamic
    */
  }

  @override
  void login(Object data, String? options) {
    print('User has logged in');
  }

  @override
  void logout() {
    print('User has logged out');
  }

  @override
  void signup(Object data, String? options) {
    print('A new user has signed up');
    // appel à la méthode store de la mixin
    store("users", data, options);
  }
}
