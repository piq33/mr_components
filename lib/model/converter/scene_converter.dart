import 'package:components/model/common_model.dart';
import 'package:json_annotation/json_annotation.dart';

/// 通知待办场景码解析
class SceneJsonConverter implements JsonConverter<PushCode, String> {
  const SceneJsonConverter();

  @override
  PushCode fromJson(String json) {
    switch (json) {
      case '1001':
      case '100101':
        return PushCode.document;
      case '1002':
      case '100201':
        return PushCode.growUp;
      case '1003':
      case '100301':
        return PushCode.lateCare;
      case '1004':
      case '100401':
        return PushCode.library;
      case '1005':
      case '100501':
        return PushCode.gallery;
      case '1006':
      case '100601':
        return PushCode.medicine;
      case '1007':
      case '100701':
        return PushCode.pickUp;
      case '1008':
        return PushCode.childtask;
      case '100801':
        return PushCode.childtaskDetail;
      case '1009':
      case '100901':
        return PushCode.clip;
      case '1010':
      case '101001':
        return PushCode.weekPlan;
      case '1011':
      case '101101':
        return PushCode.attendance;
      case '1012':
      case '101201':
        return PushCode.recipes;
      case '1014':
      case '101401':
        return PushCode.bill;
      case '1015':
      case '101501':
        return PushCode.contract;
      case '1016':
        return PushCode.notification;
      case '1017':
        return PushCode.knowledge;
      case '1018':
      case '101801':
        return PushCode.survey;
      case '1019':
        return PushCode.fothzo;
      case '1020':
        return PushCode.childcare;
      case '1021':
        return PushCode.conservation;
      case 'refresh':
        return PushCode.refresh;
      default:
        return PushCode.unknown;
    }
  }

  @override
  String toJson(PushCode value) {
    return value.sceneCode;
  }
}
