import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
                
              const Icon(
                Icons.person,
                size: 150,
                color: Colors.white,
              ),
                
               
               const SizedBox(
                height: 50,
              ),
               
               Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50, 
                  //color: const Color.fromARGB(255, 0, 255, 174),
                  child: const Row(
                    children: [ 
                      Expanded(flex: 2,child: Text("Informe o seu emai: ")),
                     // SizedBox(
                      //  width: 10,
                      //),
                      Expanded(flex:  3, child: Text("email")),
                  ],
                  ),
                ),

                 const SizedBox(
                height: 10,
              ),
               
               Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50, 
                 // color: const Color.fromARGB(255, 0, 255, 174),
                  child: const Row(
                    children: [
                      Expanded(flex: 2,child: Text("Informe a senha: ")),
                     // SizedBox(width: 10,),
                      Expanded(flex: 3,child: Text("senha")),
                      ],
                  )
                ),

                
               Expanded(child: Container()),
               Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50, 
                  color: const Color.fromARGB(255, 0, 255, 174),
                  child: const Text("Login"),
                ),

                const SizedBox(
                height: 20,
              ),
               Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50, 
                  child: const Text("Cadastro"),
                ),

                const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}