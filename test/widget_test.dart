import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dev_mobile_ecommerce_flutter/main.dart';

void main() {
  testWidgets('Login screen renders all expected widgets',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Minha aplicação'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Esqueceu a senha?'), findsOneWidget);
    expect(find.text('Não tem uma conta? Cadastre-se'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
  });
}
