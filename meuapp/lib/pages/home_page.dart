
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meuapp/dervice/geradora_numeros_aleatorios_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var number = 0;
  var qtdCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red, 
          title: Text(
          "Meu App",
          style: GoogleFonts.pacifico(),
          ),
      
        ),
        body:  Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: Colors.orange,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                color: Colors.deepPurple,
                child: Text(
                  "Ações do usuário",
                  style: GoogleFonts.roboto(fontSize: 30),
                ),
              ),
              SizedBox(
                width: 300,
                height: 100,
               child: Container(
                color: Colors.yellow,
                 child: Text(
                  "foi clicado $qtdCliques vezes ",
                  style: GoogleFonts.roboto(fontSize: 30),
                             ),
               ),
              ),
              Container(
                color: Colors.white,
                child: Text(
                  "O número gerado foi: $number",
                  style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
              Expanded(
              child: Container(
                color: Colors.black45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex:2,
                      child: Container(
                        color: Colors.blue,
                        child: Text(
                          "10",
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 255, 0, 247),
                        child: Text(
                          "20",
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 111, 255, 1),
                        child: Text(
                          "30",
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                ],
                ),
              ),
              )
            ]
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_a_photo),
          onPressed: () {
              setState(() {
                qtdCliques++;
                number = GerarNumerosAleatorioService.gerarNumerosAleatorio(10);
              });
          },
        ),
    );
  }
}