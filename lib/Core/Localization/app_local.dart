import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tiktok_flutter_clone/generated/l10n.dart';

Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates = [
  S.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
