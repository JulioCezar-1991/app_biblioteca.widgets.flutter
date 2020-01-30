import 'package:mobx/mobx.dart';

part 'cameragallery_controller.g.dart';

class CameragalleryController = _CameragalleryBase
    with _$CameragalleryController;

abstract class _CameragalleryBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
