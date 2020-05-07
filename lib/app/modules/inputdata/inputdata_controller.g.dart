// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inputdata_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InputdataController on _InputdataBase, Store {
  final _$nameAtom = Atom(name: '_InputdataBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$adressAtom = Atom(name: '_InputdataBase.adress');

  @override
  String get adress {
    _$adressAtom.context.enforceReadPolicy(_$adressAtom);
    _$adressAtom.reportObserved();
    return super.adress;
  }

  @override
  set adress(String value) {
    _$adressAtom.context.conditionallyRunInAction(() {
      super.adress = value;
      _$adressAtom.reportChanged();
    }, _$adressAtom, name: '${_$adressAtom.name}_set');
  }
}
