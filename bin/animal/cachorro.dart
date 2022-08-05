import 'dart:io';

import '../animalModel/cachorroModel.dart';

void cachorro() {
  CachorroModel Cachorro = CachorroModel(
    cor: "Amarelo",
    idade: 2,
    raca: "Doguinho",
    nome: "Scooby",
  );
  int resp = 0;
  do {
    print("Oque deseja que o cachorro faca?");
    print("1- Corra");
    print("2- Coma");
    print("3- Beba Agua");
    print("0- Dormir");
    String? respostaText = stdin.readLineSync();
    resp = int.tryParse(respostaText ?? "0") ?? 0;

    if (resp == 1) {
      Cachorro.correr();
    } else if (resp == 2) {
      Cachorro.comer();
    } else if (resp == 3) {
      Cachorro.beberAgua();
    }
  } while (resp != 0);
}
