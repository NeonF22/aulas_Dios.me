import 'package:meu_app_oo/classes/info.dart';
import 'dart:io';

void main(List<String> arguments) {
  var p1 = Info();

  print("Insira o seu nome: ");
  String? nome = stdin.readLineSync();

  print("Insira o seu peso: ");
  String? pesoStr = stdin.readLineSync();
  double? peso = double.tryParse(pesoStr ?? "");

  print("Insira a sua altura: ");
  String? alturaStr = stdin.readLineSync();
  double? altura = double.tryParse(alturaStr ?? "");

  if (nome != null && peso != null && altura != null) {
    p1.setInfo(nome, peso, altura);

    print("Nome: ${p1.getNome()}");
    print("IMC: ${p1.IMC().toStringAsFixed(2)}");
  } else {
    print("Dados inválidos! Por favor, insira os valores corretamente.");
  }
}
