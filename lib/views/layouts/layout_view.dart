import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hedaia/views/home/home_screen_view.dart';
import 'package:hedaia/views/layouts/layout%20cubit/layout_cubit_cubit.dart';
import 'package:hedaia/views/profile/profile_view.dart';
import 'package:hedaia/widgets/navigator_bar/custom_navigator_bar.dart';


class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutCubitState>(
        builder: (context, state) {
      return SafeArea(
        child: Scaffold(
           
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: IndexedStack(
                index: BlocProvider.of<LayoutCubit>(context).currentIndex??0,
                children:  const[
                 
                 HomeScreenView(),
                 
                  Center(
                    child: Text("1"),
                  ),
                 
                  Center(
                    child: Text("2"),
                  ),
                 
                  Profile(),
                 
                ],
              ),
            ),
            bottomNavigationBar: const CustomNavigatorBar()
            // const  NavigationBarTask1()
            ),
      );
    });
  }
}
