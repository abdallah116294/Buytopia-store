import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, prod }

class EnvVariable {
  EnvVariable._();
  static final instance = EnvVariable._();
  String _envType = '';
  Future<void> init({required EnvTypeEnum envTypeEnum}) async {
    switch (envTypeEnum) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');
      case EnvTypeEnum.prod:
        await dotenv.load(fileName: '.env.production');
    }
    _envType = dotenv.get("ENV_TYPE");
  }

  String get envType => _envType;
  bool get debugMode => _envType == "dev";
}
