class CachorroModel {
  String raca;
  String cor;
  int idade;
  String nome;

  CachorroModel({
    required this.cor,
    required this.idade,
    required this.raca,
    required this.nome,
  });

  bool _fome = true;
  bool _sede = true;
  int _energia = 0;

  void correr() {
    if (_energia > 0) {
      print("Correndo...");
      _energia--;
    } else if (_energia == 0) {
      print("O cachorro esta com fome e sede, nao pode mais correr");
      _fome == true;
      _sede == true;
    }
  }

  void comer() {
    if (_fome == true) {
      _fome = false;
      _energia = 5;
      print("Comendo");
    } else if (_fome == false) {
      print("O cachorro nao esta mais com fome!!");
    }
  }

  void beberAgua() {
    if (_sede == true) {
      _sede = false;
      _energia = 5;
      print("Bebendo");
    } else if (_sede == false) {
      print("O cachorro nao esta mais com sede!!");
    }
  }
}
