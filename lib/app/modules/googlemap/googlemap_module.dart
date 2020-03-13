import 'package:app_flutter_biblioteca/app/modules/googlemap/googlemap_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/googlemap/pages/geolocator_from_address_page.dart';
import 'package:app_flutter_biblioteca/app/modules/googlemap/pages/geolocator_map_page.dart';
import 'package:app_flutter_biblioteca/app/modules/googlemap/pages/polygons_polylines_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/googlemap/googlemap_page.dart';

class GooglemapModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GooglemapController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => GooglemapPage()),
        Router('/geolocatorfromaddress',
            child: (_, args) => GeolocatorFromAddressPage()),
        Router('/geolocatormap', child: (_, args) => GeolocatorMapPage()),
        Router('/polygonspolylines',
            child: (_, args) => PolygonsPolylinesPage())
      ];

  static Inject get to => Inject<GooglemapModule>.of();
}
