import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import '../../src/LootService.dart';
import '../loot_list_component/loot_list_component.dart';
import '../dashboard_component/dashboard_component.dart';

@Component
(
  selector : 'app',
  styleUrls: const ['app_component.css'],
  template :'''<h1>{{title}}</h1>
                 <nav>
                      <a [routerLink]="['BackPack']">
                         BackPack</a>
                 </nav>
                 <nav>
                      <a [routerLink]="['DashBoard']">
                         DashBoard</a>
                 </nav>
               <router-outlet></router-outlet>
              ''',
  directives: const [materialDirectives, CORE_DIRECTIVES, LootListComponent, ROUTER_DIRECTIVES],
  providers: const [LootService, ROUTER_PROVIDERS],
)
@RouteConfig
(
  const [
    const Route(path:'/backpack', component:LootListComponent, name: 'BackPack'),
    const Route(path:'/dashboard', component: DashBoardComponent, name: 'DashBoard'),
  ]
)
class AppComponent {
  final title = "Looters The Game";
}