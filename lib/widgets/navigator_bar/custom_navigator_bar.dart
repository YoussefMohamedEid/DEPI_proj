import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hedaia/constants/constant.dart';
import 'package:hedaia/views/layouts/layout%20cubit/layout_cubit_cubit.dart';
import 'package:hedaia/widgets/navigator_bar/modal_navigation_bar_item_modal.dart';

class CustomNavigatorBar extends StatefulWidget {
  const CustomNavigatorBar({
    super.key,
  });

  @override
  State<CustomNavigatorBar> createState() => _BottoCustomNavigatorBar();
}

class _BottoCustomNavigatorBar extends State<CustomNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutCubitState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 6.0, right: 6, left: 6),
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(25)),
            ),
            padding: const EdgeInsets.all(21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavigationBarItem(
                  idItem: navigationBarItemModalList[0].id,
                  name: navigationBarItemModalList[0].name,
                  icon: navigationBarItemModalList[0].icon,
                  onTap: () {
                    BlocProvider.of<LayoutCubit>(context).onTap(0);
                  },
                ),
                NavigationBarItem(
                  idItem: navigationBarItemModalList[1].id,
                  name: navigationBarItemModalList[1].name,
                  icon: navigationBarItemModalList[1].icon,
                  onTap: () {
                    BlocProvider.of<LayoutCubit>(context).onTap(1);
                  },
                ),
                NavigationBarItem(
                  idItem: navigationBarItemModalList[2].id,
                  name: navigationBarItemModalList[2].name,
                  icon: navigationBarItemModalList[2].icon,
                  onTap: () {
                    BlocProvider.of<LayoutCubit>(context).onTap(2);
                  },
                ),
                NavigationBarItem(
                  idItem: navigationBarItemModalList[3].id,
                  name: navigationBarItemModalList[3].name,
                  icon: navigationBarItemModalList[3].icon,
                  onTap: () {
                    BlocProvider.of<LayoutCubit>(context).onTap(3);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class NavigationBarItem extends StatefulWidget {
  const NavigationBarItem(
      {super.key,
      required this.name,
      required this.icon,
      required this.idItem,
      required this.onTap});

  final String name;
  final IconData icon;
  final int idItem;
  final void Function() onTap;

  @override
  State<NavigationBarItem> createState() => _NavigationBarItemState();
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          decoration: BoxDecoration(
            color: BlocProvider.of<LayoutCubit>(context).currentIndex ==
                    widget.idItem
                ? kThirdColor
                : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: widget.idItem ==
                  BlocProvider.of<LayoutCubit>(context).currentIndex
              ? Row(
                  children: [
                    Icon(
                      widget.icon,
                      size: 32,
                      color: kPrimaryColor,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(color: kPrimaryColor),
                    )
                  ],
                )
              : Icon(
                  widget.icon,
                  size: 30,
                  color: Colors.white,
                )),
    );
  }
}
