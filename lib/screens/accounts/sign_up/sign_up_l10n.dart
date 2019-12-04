import 'package:com_cingulo_sample/app/app_l10n.dart';
import 'package:com_cingulo_sample/common/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum _LKeys { title, formFullName, formEmail, formUsername, formPassword, formSubmit, logIn }

class SignUpL10n {
  static final Map<String, Map<_LKeys, String>> _localizedValues = {
    AppL10n.enUS.toString(): {
      _LKeys.title: "Cíngulo Flutter Sample",
      _LKeys.formFullName: "Full name",
      _LKeys.formEmail: "Email",
      _LKeys.formUsername: "Username",
      _LKeys.formPassword: "Password",
      _LKeys.formSubmit: "Sign Up",
      _LKeys.logIn: "Already have an account? Log In",
    },
    AppL10n.ptBR.toString(): {
      _LKeys.title: "Cíngulo Flutter Sample",
      _LKeys.formFullName: "Nome completo",
      _LKeys.formEmail: "Email",
      _LKeys.formUsername: "Nome de usuário",
      _LKeys.formPassword: "Senha",
      _LKeys.formSubmit: "Cadastrar",
      _LKeys.logIn: "Já possui cadastro? Acesse",
    },
  };

  String get title => _localizedValues[locale.toString()][_LKeys.title];
  String get formFullName => _localizedValues[locale.toString()][_LKeys.formFullName];
  String get formEmail => _localizedValues[locale.toString()][_LKeys.formEmail];
  String get formUsername => _localizedValues[locale.toString()][_LKeys.formUsername];
  String get formPassword => _localizedValues[locale.toString()][_LKeys.formPassword];
  String get formSubmit => _localizedValues[locale.toString()][_LKeys.formSubmit];
  String get logIn => _localizedValues[locale.toString()][_LKeys.logIn];

  final Locale locale;

  SignUpL10n(this.locale);

  static const LocalizationsDelegate<dynamic> delegate = _SignUpL10nDelegate();
}

class _SignUpL10nDelegate extends AL10nDelegate<SignUpL10n> {
  const _SignUpL10nDelegate();

  @override
  Future<SignUpL10n> load(Locale locale) => SynchronousFuture<SignUpL10n>(SignUpL10n(locale));
}
