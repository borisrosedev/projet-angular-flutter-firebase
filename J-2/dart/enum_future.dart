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

void main() {}
