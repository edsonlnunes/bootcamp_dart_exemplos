import 'enums.dart';
import 'extension_methods.dart';

void main() {
  // ${_cpf.substring(0, 3)}.${_cpf.substring(3, 6)}.${_cpf.substring(6, 9)}-${_cpf.substring(9)}

  var cpf = '22233344';
  print(cpf.formatarCPF());

  // tipo int = conveter um inteiro para boolean
  print('Int to bool: ${0.toBoolean()}');

  // tipo bool = conveter um bool para inteiro
  print('Bool to int : ${false.toInt()}');

  var status = EStatus.APROVADO;
  var statusString = 'reprovado';

  print(status.convertToString());
  print(statusString.toEStatus());
}
