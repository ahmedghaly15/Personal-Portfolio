import 'package:flutter/material.dart';

@immutable
sealed class LocaleState {
  final Locale locale;
  const LocaleState(this.locale);
}

final class LocaleInitial extends LocaleState {
  const LocaleInitial(super.locale);
}

final class LocaleChanged extends LocaleState {
  const LocaleChanged(super.locale);
}
