import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
import 'filter_button_widget.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = HomeController();
    return SizedBox(
      height: size.width * 0.128,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: controller.filterList.length,
              (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: size.width * 0.042,
                  ),
                  child: FilterButtonWidget(
                    filterModel: controller.filterList[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
