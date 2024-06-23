import 'package:flutter_proj/localization/localizations.dart';

enum PassengerTypeEnum { adult, child, infant }

extension PassengerTypeExtension on PassengerTypeEnum {
  String getString() {
    switch (this) {
      case PassengerTypeEnum.adult:
        return 'Adult';
      case PassengerTypeEnum.child:
        return 'Child';
      case PassengerTypeEnum.infant:
        return 'Infant';
    }
  }
}

class PassengerTypeUtil {
  PassengerTypeUtil._();

  static String? fromEnumToString(
    PassengerTypeEnum? passengerTypeEnum,
    AppLocalizations appLocalizations,
  ) {
    switch (passengerTypeEnum) {
      case PassengerTypeEnum.adult:
        return appLocalizations.adult;
      case PassengerTypeEnum.child:
        return appLocalizations.child;
      case PassengerTypeEnum.infant:
        return appLocalizations.infant;
      default:
        return null;
    }
  }

  static PassengerTypeEnum? fromStringToEnum(
    String? passengerTypeString,
    AppLocalizations appLocalizations,
  ) {
    if (passengerTypeString == null) {
      return null;
    }
    for (var element in PassengerTypeEnum.values) {
      if (PassengerTypeUtil.fromEnumToString(element, appLocalizations) ==
          passengerTypeString) {
        return element;
      }
    }
    return null;
  }
}
