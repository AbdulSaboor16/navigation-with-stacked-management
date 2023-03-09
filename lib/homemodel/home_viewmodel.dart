import 'package:stacked/stacked.dart';
import 'package:stackedapp/app/app.locator.dart';
import 'package:stackedapp/services/counter_services.dart';

class HomeViewModel extends BaseViewModel {
  final counterServices = locator<CounterServices>();
}