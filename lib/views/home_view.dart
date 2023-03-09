import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedapp/homemodel/counter_viewmodel.dart';

import '../homemodel/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder:() => HomeViewModel(),
       builder:(context, viewModel, child) {
         return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(viewModel.counterServices.counterValue.toString()),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).popUntil((route) => route.isFirst);
                }, child: Text("back"))
              ],
            ),
          ),
          
         );
       });
  }
}