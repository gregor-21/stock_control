import 'package:flutter_modular/flutter_modular.dart';
import 'package:stock_control/src/feature/pages/presentation/logo_page.dart';
import 'viewmodel/home_viewmodel.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => HomeViewModel()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const LogoPage()),
      ];
}
