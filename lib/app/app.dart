import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp/services/counter_services.dart';
import 'package:stackedapp/views/counter_view.dart';
import 'package:stackedapp/views/home_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: CounterView,initial: true),
  MaterialRoute(page: HomeView),
],dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterServices)
])
class App{}