class Info {
  String? nome;
  double? peso;
  double? altura;

  void setInfo(String nome, double peso, double altura) {
    this.nome = nome;
    this.peso = peso;
    this.altura = altura;
  }

  String getNome() => nome ?? "Nome não definido";

  double IMC() {
    if (peso != null && altura != null && altura! > 0) {
      return peso! / (altura! * altura!);
    } else {
      return 0.0;
    }
  }
}
