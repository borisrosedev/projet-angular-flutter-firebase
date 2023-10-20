import '../../J-1/dart/classes/UserAdmin.dart';

enum UserType {
  // c'est un exemple d'enum sophistiqué disons.
  // faites bien attention le dernier cas est suivi d'un ;
  // placez les constantes en premier;
  admin(isAdmin: true, isPremium: false),
  basic(isAdmin: false, isPremium: false),
  premium(isAdmin: true, isPremium: true);

  //constructeur constant
  const UserType({required this.isAdmin, required this.isPremium});
  // variables d'instance finales
  final bool isAdmin;
  final bool isPremium;
}

Future<String>? showUserType() {
  print('and the last word is ...');
  return Future.delayed(const Duration(seconds: 2), () => 'world ');
}

Future<void> main() {
  print('hello');
  // soit on utilise return puis then mais ensuite on est dans potentiellement un callback hell
  // soit on utilse async et await
  return Future.delayed(Duration(milliseconds: 2000))
      .then((_) async => print(await showUserType()));
}
