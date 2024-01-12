import 'package:flutter/material.dart';
import 'dart:math';

//================== QUESTION 1 =========================
/*
void main() {
  // Test de la fonction isMajeur()
  print(isMajeur(21, "masculin")); // Résultat : "majeur"
  print(isMajeur(17, "féminin")); // Résultat : "mineur"

  printBonjour(5); // Exemple: affiche "Bonjour le monde" 5 fois
}

String isMajeur(int age, String genre) {
  if (age >= 18) {
    if (genre.toLowerCase() == "masculin") {
      return "majeur";
    } else if (genre.toLowerCase() == "féminin") {
      return "majeure";
    }
  }
  if (genre.toLowerCase() == "masculin") {
    return "mineur";
  } else if (genre.toLowerCase() == "féminin") {
    return "mineure";
  }

  // Si le genre n'est pas reconnu, on retourne "inconnu"
  return "inconnu";
}
*/
//============= QUESTION 2 ====================

/*
void main() {
  printBonjour(5); // Exemple: affiche "Bonjour le monde" 5 fois
}

void printBonjour(int count) {
  for (int i = 0; i < count; i++) {
    print("Bonjour le monde");
  }
}
*/

//================== QUESTION 3 =============
/*
void main() {
  double a = 2; // Modifier le coefficient a
  double b = -3; // Modifier le coefficient b
  double c = 1; // Modifier le coefficient c

  List<double> solutions = calculerSolutionsEquation(a, b, c);
  print(
      "Les solutions de l'équation sont : ${solutions[0]} et ${solutions[1]}");
}

List<double> calculerSolutionsEquation(double a, double b, double c) {
  double delta = pow(b, 2) - (4 * a * c);

  if (delta > 0) {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    return [x1, x2];
  } else if (delta == 0) {
    double x = -b / (2 * a);
    return [x];
  } else {
    return [];
  }
}

*/

//========= QUESTION 4 ============

/*
void main() {
  List<int> nombres = [20, 15, 10, 25, 30];
  double moyenne = calculerMoyenne(nombres);
  print('La moyenne est : $moyenne');
}

double calculerMoyenne(List<int> nombres) {
  int somme = 0;
  for (int nombre in nombres) {
    somme += nombre;
  }
  return somme / nombres.length;
}

*/

//========== QUESTION 5 ===========

/*
void main() {
  int number = 5;
  int factorial = calculateFactorial(number);
  print("Le factoriel de $number est $factorial");
}

int calculateFactorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * calculateFactorial(n - 1);
  }
}
*/

//======== QUESTION 6  =============

void main() {
  Etudiant etudiant = Etudiant(
    id: 1,
    nom: 'MOISE',
    postnom: 'WANZIRE',
    prenom: 'VANGI',
    sexe: 'M',
    age: 20,
    dateNaissance: '01/01/2000',
    poids: 70.5,
    taille: 160.0,
  );

  etudiant.afficherEtudiant();
}

class Etudiant {
  int id;
  String nom;
  String postnom;
  String prenom;
  String sexe;
  int age;
  String dateNaissance;
  double poids;
  double taille;

  Etudiant({
    required this.id,
    required this.nom,
    required this.postnom,
    required this.prenom,
    required this.sexe,
    required this.age,
    required this.dateNaissance,
    required this.poids,
    required this.taille,
  });

  // Accesseurs
  int get getId => id;
  String get getNom => nom;
  String get getPostnom => postnom;
  String get getPrenom => prenom;
  String get getSexe => sexe;
  int get getAge => age;
  String get getDateNaissance => dateNaissance;
  double get getPoids => poids;
  double get getTaille => taille;

  // Mutateurs
  set setId(int id) => this.id = id;
  set setNom(String nom) => this.nom = nom;
  set setPostnom(String postnom) => this.postnom = postnom;
  set setPrenom(String prenom) => this.prenom = prenom;
  set setSexe(String sexe) => this.sexe = sexe;
  set setAge(int age) => this.age = age;
  set setDateNaissance(String dateNaissance) =>
      this.dateNaissance = dateNaissance;
  set setPoids(double poids) => this.poids = poids;
  set setTaille(double taille) => this.taille = taille;

  void afficherEtudiant() {
    print('ID: $id');
    print('Nom: $nom');
    print('Postnom: $postnom');
    print('Prénom: $prenom');
    print('Sexe: $sexe');
    print('Age: $age');
    print('Date de naissance: $dateNaissance');
    print('Poids: $poids kg');
    print('Taille: $taille cm');
  }
}
