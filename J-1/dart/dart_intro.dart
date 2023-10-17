// bonus small enum
// pas de ; derrnière un enum
import 'classes/UserAdmin.dart';

enum UserType { admin, basic, premium }

void main() {
  /** 
  cette fonction est une procédure (ni paramètres ni valeur de retour explicite)
  nous sommes ici dans le corps de la fonction { début - fin }
  ici main() est une top-level function  
  Il y a toujours une fonction sans  valeur de retour explicite à toujours 
  une valeur de retour  implicite en dart : null
  */
  String name = "anouar";
  //A la ligne 11, je déclare explicitement le type de la variable anouar
  Map<String, Object> anouar = {
    'firstname': '${name[0].toUpperCase()}${name.substring(1).toLowerCase()}}',
    'lastname': 'dupont',
    'role': UserType.basic
  };
  //Mais je peux également laisser Dart déduire le type (par inférence) en utilisant var
  var simon = {
    'firstname': 'simon ',
    'lastname': '${anouar.values.elementAt(1)}',
    'role': UserType.premium
  };
  print('---------🟢--------------');
  print(anouar.runtimeType); //Map<String, Object>
  print('---------🔴--------------');
  if (simon.keys.first == 'firstname') print(simon.keys.first); // firstname
  print('---------🔵--------------');
  print(simon); // {firstname: simon , lastname: dupont}
  print('---------🟠--------------');

  // On va déclarer une liste et ajouter les deux variables de type Map anouar et simon dedans
  var list = new List.empty(growable: true);
  list.addAll([anouar, simon]);
  print(list);
  print('---------✅--------------');

  // petites instances de la classe UserAdmin

  const miloAdmin = UserAdmin(email: 'milo@gmail.com', password: 'milomane');
  const redaAdmin = UserAdmin(
      email: 'reda@gmail.com',
      password: 'redamane',
      firstname: 'reda',
      lastname: 'dupont');
  const tonyoAdmin =
      UserAdmin(email: 'tonyo@gmail.com', password: 'angularboss');

  // creation d'un Set dont les membres sont uniques
  var administrators = Set.of({miloAdmin, redaAdmin, tonyoAdmin});

  var superAdministrators = Set<UserAdmin>.from(
      administrators.where((admin) => (admin.password == 'angularboss')));
  print(superAdministrators.contains(tonyoAdmin)); //true
}
