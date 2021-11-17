import 'entities/aluno.dart';

extension EStatusExtension on EStatus {
  String convertToString() {
    switch (this) {
      case EStatus.APROVADO:
        return 'APROVADO';
      case EStatus.REPROVADO:
        return 'REPROVADO';
      case EStatus.NAO_DEFINIDO:
      default:
        return 'NAO_DEFINIDO';
    }
  }
}

extension StringExtension on String {
  EStatus convertToEStatus() {
    switch (toUpperCase()) {
      case 'APROVADO':
        return EStatus.APROVADO;
      case 'REPROVADO':
        return EStatus.REPROVADO;
      case 'NAO_DEFINIDO':
      default:
        return EStatus.NAO_DEFINIDO;
    }
  }
}
