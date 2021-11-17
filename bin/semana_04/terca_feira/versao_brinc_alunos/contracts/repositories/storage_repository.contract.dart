import '../../entities/turma.dart';

abstract class IStorageRepository {
  Future<void> save(Turma turma);
  Future<Turma> recovery();
}
