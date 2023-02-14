import 'dart:io';

void main(List<String> arguments) {
  // int idade = 25;
  // print("Idade => $idade");
  // print("Qual é a sua idade");
  // String? input = stdin.readLineSync();
  // if (input != null) {
  //   int idade = int.parse(input);
  //   print("Idade no proximo ano => ${idade + 1}");
  // }
  print("Qual é a sua massa");
  String? inputMassa = stdin.readLineSync();

  print("Qual é a sua altura");
  String? inputAltura = stdin.readLineSync();

  if (inputMassa != null && inputAltura != null) {
    double massa = double.parse(inputMassa);
    double altura = double.parse(inputAltura);

    String resultado = calculaIMC(massa, altura);
    print(resultado);
  }
}

String calculaIMC(double massa, double altura) {
  double resultado = massa / (altura * altura);
  String mensagem = "";

  if (resultado < 17) {
    mensagem = "Muito abaixo do peso";
  } else if (resultado >= 17 && resultado <= 18.49) {
    mensagem = "Abaixo do peso";
  } else if (resultado >= 18.50 && resultado <= 24.99) {
    mensagem = "Peso normal";
  } else if (resultado >= 25 && resultado <= 29.99) {
    mensagem = "Acima do peso";
  } else if (resultado >= 30 && resultado <= 34.99) {
    mensagem = "Obesidade I";
  } else if (resultado >= 35 && resultado <= 39.99) {
    mensagem = "Obesidade II (severa)";
  } else if (resultado >= 40) {
    mensagem = "Obesidade III (mórbida)";
  }

  return mensagem;
}
