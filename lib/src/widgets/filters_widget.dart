import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
import 'filter_button_widget.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = HomeController();
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.filterList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 18),
            child: FilterButtonWidget(
              filterModel: controller.filterList[index],
            ),
          );
        },
      ),
    );
  }
}
