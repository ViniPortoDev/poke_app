import 'package:desafio02/src/models/filter_model.dart';
import 'package:flutter/material.dart';

class FilterButtonWidget extends StatefulWidget {
  final FilterModel filterModel;

  const FilterButtonWidget({
    Key? key,
    required this.filterModel,
  }) : super(key: key);

  @override
  State<FilterButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<FilterButtonWidget> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = true;
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
          color: isSelected == true ? Colors.white : const Color(0xffFF5F50),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.filterModel.icon,
              size: 25,
              color: isSelected == true ? Colors.grey : Colors.white,
            ),
            const SizedBox(width: 10),
            Text(
              widget.filterModel.text ?? '',
              style: TextStyle(
                fontSize: 18,
                color: isSelected == true ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
