// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';

/*
import 'package:aula02/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}*/


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cidades de Rondônia'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Image.network(
                'URL_DA_SUA_IMAGEM',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brasil',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Ji-Paraná, Rondônia', style: TextStyle(fontSize: 16)),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Icon(Icons.map),
                      SizedBox(width: 10),
                      Icon(Icons.share),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ji-Paraná é um município brasileiro do estado de Rondônia. Sua população, conforme estimativas do IBGE de 2021, era de 131.026 habitantes...',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

