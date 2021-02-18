import 'enums.dart';

extension StringExtension on String {
  String formatarCPF() {
    final cpf = this.padLeft(11, '0');
    return '${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9)}';
  }

  EStatus toEStatus() {
    switch (this.toUpperCase()) {
      case 'APROVADO':
        return EStatus.APROVADO;
      case 'REPROVADO':
        return EStatus.REPROVADO;
      case 'NAO DEFINIDO':
      default:
        return EStatus.NAO_DEFINIDO;
    }
  }
}

extension IntExtenstion on int {
  bool toBoolean() {
    return this == 1;
  }
}

extension BoolExtension on bool {
  int toInt() {
    return this ? 1 : 0;
  }
}

extension EStatusExtension on EStatus {
  String convertToString() {
    switch (this) {
      case EStatus.APROVADO:
        return 'Aprovado';
      case EStatus.REPROVADO:
        return 'Reprovado';
      case EStatus.NAO_DEFINIDO:
      default:
        return 'Não definido';
    }
  }
}
