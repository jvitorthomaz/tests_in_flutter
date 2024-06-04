import 'package:estilizacao_componentes/models/bank.dart';
import 'package:flutter_test/flutter_test.dart';
void main(){

  // description deve conter:
  // - MÉTODO: nome do metodo que será testado
  // - LOCAL: cenário em que esta sendo testado
  // - RESULTADO: resultado esperado
  test('Bank model deposit should turn points into 10', () {
    final bank = BankModel();

    bank.deposit(10);
    expect(bank.points, 10);
  });

  test('Bank model deposit should turn available into 10', () {
    final bank = BankModel();

    bank.deposit(10);
    expect(bank.available, 10);
  });

  test('Bank model trannsfer should turn points into 10', () {
    final bank = BankModel();

    bank.transfer(10);
    expect(bank.points, 10);
  });

  group('Bank model deposit tests', () {
    test('Bank model deposit should turn points into 10', () {
      final bank = BankModel();

      bank.deposit(10);
      expect(bank.points, 10);
    });

    test('Bank model deposit should turn available into 10', () {
      final bank = BankModel();

      bank.deposit(10);
      expect(bank.available, 10);
    });
  });

}