import 'dart:math';

class GerarNumerosAleatorioService{
    static int gerarNumerosAleatorio(int numeroMax){
      Random num = Random();
      return num.nextInt(numeroMax);
    }
  
}