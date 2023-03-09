import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedapp/homemodel/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder:() => CounterViewModel(),
       builder:(context, viewModel, child) {
         return SafeArea(
           child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(viewModel.counterService.counterValue.toString()),
                  ElevatedButton(onPressed: (){
                    viewModel.addValue();
                  }, child: Text("Add Counter Value")),
                  ElevatedButton(onPressed: (){
                    viewModel.navigateToHome();
                    
                  }, child: Text("navigator to home"))
                ],
              ),
            ),
           ),
         );
       });
  }
}