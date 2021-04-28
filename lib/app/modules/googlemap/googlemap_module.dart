import 'package:biblioteca_framework_flutter_github_io/app/modules/googlemap/googlemap_controller.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/googlemap/pages/geolocator_from_address_page.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/googlemap/pages/geolocator_map_page.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/googlemap/pages/polygons_polylines_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/googlemap/googlemap_page.dart';

class GooglemapModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => GooglemapController()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => GooglemapPage()),
    ChildRoute('/geolocatorfromaddress',
        child: (_, args) => GeolocatorFromAddressPage()),
    ChildRoute('/geolocatormap', child: (_, args) => GeolocatorMapPage()),
    ChildRoute('/polygonspolylines',
        child: (_, args) => PolygonsPolylinesPage())
  ];

  static Inject get to => Inject<GooglemapModule>.of();
}
