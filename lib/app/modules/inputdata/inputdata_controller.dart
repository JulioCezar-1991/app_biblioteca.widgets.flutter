import 'package:mobx/mobx.dart';

part 'inputdata_controller.g.dart';

class InputdataController = _InputdataBase with _$InputdataController;

abstract class _InputdataBase with Store {
  List<String> list = [
    'Selecione um dia da Semana',
    'Segunda-Feira',
    'Terça-Feira',
    'Quarta-Feira',
    'Quinta-feira',
    'Sexta-Feira'
  ];

  @observable
  String name = '';

  @observable
  String adress = '';

  @observable
  String day = '';
}
