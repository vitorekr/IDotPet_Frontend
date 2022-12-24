import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget> [

            // Cria dentro do sized box para ter mais controle sobre o tamanho
            // da imagem
            SizedBox( 
              width: 200,
              height: 200,
              child: Image.asset("assets/images/dogao2.png"),
            ),

            // apenas para dar um espaço, parece gambiarra
            const SizedBox(
              height: 80,
            ),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )
              ),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),

            // campo da senha, o importante é botar o obscureText
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,

              decoration: const InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),

            // botão de esqueci a senha
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                child: const Text('Esqueci a senha',
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}