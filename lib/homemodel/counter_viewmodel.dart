import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp/app/app.locator.dart';
import 'package:stackedapp/app/app.router.dart';
import 'package:stackedapp/services/counter_services.dart';

class CounterViewModel extends BaseViewModel{
  final  navigationService = locator<NavigationService>();
  final counterService = locator<CounterServices>();

  addValue(){
    counterService.addcounterValue();
    rebuildUi();
  }
  
  navigateToHome(){
   navigationService.navigateToHomeView();
  }
 
}