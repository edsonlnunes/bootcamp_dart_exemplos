import 'dart:convert';
import 'dart:io';

import '../contracts/repositories/storage_repository.contract.dart';
import '../entities/turma.dart';

class FileRepository implements IStorageRepository {
  @override
  Future<Turma> recovery() async {
    final file = File('storage.json');

    try {
      if (!(await file.exists())) return null;

      final json = await file.readAsString();

      if (json.isEmpty) return null;

      final turmaMap = jsonDecode(json) as Map;

      final turma = Turma.fromMap(turmaMap);

      return turma;
    } catch (e) {
      throw 'Erro ao buscar a turma';
    }
  }

  @override
  Future<void> save(Turma turma) async {
    final file = File('storage.json');

    try {
      await file.writeAsString(jsonEncode(turma.toMap()));
    } catch (e) {
      throw 'Erro ao salvar a turma';
    }
  }
}
