import 'package:injectable/injectable.dart';
import 'package:primeiro_app_flutter/character/data/service/character_response.dart';
import 'package:primeiro_app_flutter/character/data/service/character_service.dart';

abstract class CharacterRepository {
  Future<CharacterApiResponse> getCharacters(int page);
}

@Injectable(as: CharacterRepository)
class CharacterRepositoryImpl implements CharacterRepository {
  const CharacterRepositoryImpl(this._service);

  final CharacterService _service;

  @override
  Future<CharacterApiResponse> getCharacters(int page) =>
      _service.getCharacters(page);
}
