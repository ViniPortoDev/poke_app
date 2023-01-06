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
    return InkWell(
      onTap: () {
        setState(() {
          widget.filterModel.isSelected = !widget.filterModel.isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: widget.filterModel.isSelected
              ? const Color(0xffFF5F50)
              : Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.filterModel.icon,
              size: 30,
              color: widget.filterModel.isSelected ? Colors.white : Colors.grey,
            ),
            Visibility(
              visible: widget.filterModel.text.isNotEmpty || false,
              child: const SizedBox(width: 10),
            ),
            Text(
              widget.filterModel.text,
              style: TextStyle(
                fontSize: 18,
                color:
                    widget.filterModel.isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
