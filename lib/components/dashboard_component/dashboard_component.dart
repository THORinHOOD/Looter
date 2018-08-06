import 'package:FirstSite/src/Loot.dart';
import 'package:FirstSite/src/LootService.dart';
import "package:angular/angular.dart";
import 'package:angular_components/angular_components.dart';


@Component
(
  selector : 'dashboard',
  styleUrls : const ['dashboard_component.css'],
  template : '''
            <h3>Recent picked up loots</h3>
            <div class="grid grid-pad"> 
              <div *ngFor="let loot of loots">
                <div class="module loot">
                  <h4>{{loot.getName()}}</h4>
                </div>
              </div>
            </div>
  ''',
  directives: const [CORE_DIRECTIVES, materialDirectives],
)
class DashBoardComponent implements OnInit {
  List<Loot> loots;
  final LootService _lootService;

  DashBoardComponent(this._lootService);

  @override
  ngOnInit() async => loots = (await _lootService.getAll()).skip(1).take(4).toList();
}