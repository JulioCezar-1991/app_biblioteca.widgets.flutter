import 'package:app_flutter_biblioteca/app/modules/inputdata/inputdata_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/inputdata/pages/input_cheak_box.dart';
import 'package:app_flutter_biblioteca/app/modules/inputdata/pages/input_data_between.dart';
import 'package:app_flutter_biblioteca/app/modules/inputdata/pages/input_radio_button.dart';
import 'package:app_flutter_biblioteca/app/modules/inputdata/pages/input_slider.dart';
import 'package:app_flutter_biblioteca/app/modules/inputdata/pages/input_switch.dart';
import 'package:app_flutter_biblioteca/app/modules/inputdata/pages/input_textField.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/inputdata/inputdata_page.dart';

class InputdataModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => InputdataController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => InputdataPage()),
        Router('/cheakbox', child: (_, args) => InputCheakBox()),
        Router('/databetwwen', child: (_, args) => InputDataBetween()),
        Router('/radiobutton', child: (_, args) => InputRadioButton()),
        Router('/slider', child: (_, args) => InputSlider()),
        Router('/switch', child: (_, args) => InputSwitch()),
        Router('/textfield', child: (_, args) => InputTextField())
      ];

  static Inject get to => Inject<InputdataModule>.of();
}
