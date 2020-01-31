// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flare_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FlareController on _FlareBase, Store {
  final _$valueAtom = Atom(name: '_FlareBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$_FlareBaseActionController = ActionController(name: '_FlareBase');

  @override
  void increment() {
    final _$actionInfo = _$_FlareBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_FlareBaseActionController.endAction(_$actionInfo);
    }
  }
}
