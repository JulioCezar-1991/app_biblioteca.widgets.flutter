// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeController on _ThemeControllerBase, Store {
  final _$_themeAtom = Atom(name: '_ThemeControllerBase._theme');

  @override
  ThemeData get _theme {
    _$_themeAtom.context.enforceReadPolicy(_$_themeAtom);
    _$_themeAtom.reportObserved();
    return super._theme;
  }

  @override
  set _theme(ThemeData value) {
    _$_themeAtom.context.conditionallyRunInAction(() {
      super._theme = value;
      _$_themeAtom.reportChanged();
    }, _$_themeAtom, name: '${_$_themeAtom.name}_set');
  }

  final _$saveAsyncAction = AsyncAction('save');

  @override
  Future save(dynamic theme) {
    return _$saveAsyncAction.run(() => super.save(theme));
  }

  final _$loadAsyncAction = AsyncAction('load');

  @override
  Future<dynamic> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  final _$_ThemeControllerBaseActionController =
      ActionController(name: '_ThemeControllerBase');

  @override
  dynamic change(String color) {
    final _$actionInfo = _$_ThemeControllerBaseActionController.startAction();
    try {
      return super.change(color);
    } finally {
      _$_ThemeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  ThemeData getTheme() {
    final _$actionInfo = _$_ThemeControllerBaseActionController.startAction();
    try {
      return super.getTheme();
    } finally {
      _$_ThemeControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
