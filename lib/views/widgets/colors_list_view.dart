import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/add_note_cubit/add_note_cubit.dart';
import 'color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffEAE8FF),
    Color(0xffD8D5DB),
    Color(0xffADACB5),
    Color(0xff2D3142),
    Color(0xffFF9671),
    Color(0xffFFC75F),
    Color(0xffF9F871),
    Color(0xff008F7A),
    Color(0xff008E9B),
    Color(0xff2C73D2),
    Color(0xffFF8066),
    Color(0xffC34A36),
    Color(0xff4FFBDF),
    Color(0xffFEFEDF),
    Color(0xff926C00),
    Color(0xff30156F),
    Color(0xff41227F),
    Color(0xff7954B7),
    Color(0xffEDC0FF),
    Color(0xffB0D7FF),
    Color(0xff845EC2),
    Color(0xffD65DB1),
    Color(0xffFF6F91),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21 * 2,
      child: ListView.builder(
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
