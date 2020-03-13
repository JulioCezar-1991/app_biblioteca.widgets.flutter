// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeController on _ThemeControllerBase, Store {
  final _$saveAsyncAction = AsyncAction('save');

  @override
  Future save(dynamic theme) {
    return _$saveAsyncAction.run(() => super.save(theme));
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
}
