//import 'package:estilizacao_componentes/mocks/bank_http.mocks.dart';
import 'package:estilizacao_componentes/data/bank_inherited.dart';
import 'package:estilizacao_componentes/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'bank_api.dart';
void main(){
  final MockBankHttp httpMock = MockBankHttp(); 
  
  testWidgets('Testing http connection with Mock', (tester) async {
    when(httpMock.dolarToReal()).thenAnswer((_) async => ('5'));
    await tester.pumpWidget(
      MaterialApp(
        // dependencia
        home: BankInherited(
          //dependencia
            child: Home(api: httpMock.dolarToReal(),)),
      ),
    );
    await tester.pumpAndSettle();
    verify(httpMock.dolarToReal()).called(1);
  });
  test('Testing only function', () {
    when(httpMock.dolarToReal()).thenAnswer((_) async => '5');
    httpMock.dolarToReal();
    verify(httpMock.dolarToReal()).called(1);
    }
  );

}