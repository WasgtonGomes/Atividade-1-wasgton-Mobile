import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                  bottom: 15.0), // Espaçamento inferior da imagem
              child: Image.network(
                'https://media-cdn.tripadvisor.com/media/photo-s/09/cd/7c/8b/rio-ji-parana.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Alinha os widgets nos extremos
              children: <Widget>[
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alinha o texto à esquerda
                  children: <Widget>[
                    Text('Brasil', style: TextStyle(fontSize: 24)), // Título
                    Text('Ji-Paraná, Rondônia',
                        style: TextStyle(fontSize: 16)), // Subtítulo
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.blue), // Estrela azul
                    Icon(Icons.star, color: Colors.blue), // Estrela azul
                    Icon(Icons.star, color: Colors.blue), // Estrela azul
                    Text('3.500'), // Número de avaliações
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15.0), // Espaçamento entre os ícones e os botões
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Espaçamento igual entre os botões
              children: <Widget>[
                ElevatedButton.icon(
                  icon: const Icon(Icons.facebook, color: Colors.blue),
                  label: const Text('Facebook'),
                  onPressed: () {
                    // Lógica para abrir o Facebook
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0), // Espaçamento horizontal dos botões
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.map, color: Colors.blue),
                  label: const Text('Endereço'),
                  onPressed: () {
                    // Lógica para abrir o endereço no mapa
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0), // Espaçamento horizontal dos botões
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.share, color: Colors.blue),
                  label: const Text('Compartilhar'),
                  onPressed: () {
                    // Lógica para compartilhar
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0), // Espaçamento horizontal dos botões
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 20.0), // Espaçamento nas laterais do texto

              child: Text(
                'Ji-Paraná é um município brasileiro do estado de Rondônia, Sua populção, conforme estimativas do IBGE de 2021, era de 131.025 habitantes, sendo o segundo mais populoso do estado e sendo o décimo mais populoso da região Norte do Brasil, a 226ª mais populosa do Brasil e a 113ª mais populosa cidade do interior brasileiro.', // Texto sobre Ji-Paraná
                textAlign: TextAlign.justify, // Centraliza o texto
              ),
            ),
          ],
        ),
      ),
    );
  }
}
