import 'package:flutter/cupertino.dart';
import 'package:quizzly/services/l10n/app_localizations.dart';

extension CustomContext on BuildContext {
  AppLocalizations get lang => AppLocalizations.of(this);
}