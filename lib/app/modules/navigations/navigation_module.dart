import 'package:flutter_modular/flutter_modular.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/navigation_controller.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_hero.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_app_bar.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_app_bar_bottom.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_between.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_bottom_sheet.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_collapsible_toolbar.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_drawer.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_expansion_tile.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_listview_builder.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_pageview_builder.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_stepper.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/pages/navigation_tab_bar.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/navigation_page.dart';

class NavigationModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => NavigationController()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => NavigationPage()),
    ChildRoute('/appbarbottom', child: (_, args) => NavigationAppBarBottom()),
    ChildRoute('/appbar', child: (_, args) => NavigationAppBar()),
    ChildRoute('/between', child: (_, args) => NavigationBetween()),
    ChildRoute('/bottomsheet', child: (_, args) => NavigationBottomSheet()),
    ChildRoute('/collapsible',
        child: (_, args) => NavigationCollapsibleToolbar()),
    ChildRoute('/drawer', child: (_, args) => NavigationDrawer()),
    ChildRoute('/expansiontile', child: (_, args) => NavigationExpansionTile()),
    ChildRoute('/hero', child: (_, args) => NavigationHero()),
    ChildRoute('/listview', child: (_, args) => NavigationListViewBuilder()),
    ChildRoute('/pageview', child: (_, args) => NavigationPageViewBuilder()),
    ChildRoute('/stepper', child: (_, args) => NavigationStepper()),
    ChildRoute('/tabbar', child: (_, args) => NavigationTabBar()),
  ];
}
