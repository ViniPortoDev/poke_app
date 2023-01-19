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
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        setState(() {
          widget.filterModel.isSelected = !widget.filterModel.isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.037),
        decoration: BoxDecoration(
          color: widget.filterModel.isSelected
              ? const Color(0xffFF5F50)
              : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.filterModel.icon,
              size: size.width * 0.064,
              color: widget.filterModel.isSelected ? Colors.white : Colors.grey,
            ),
            Visibility(
              visible: widget.filterModel.text.isNotEmpty || false,
              child: const SizedBox(width: 10),
            ),
            Text(
              widget.filterModel.text,
              style: TextStyle(
                fontSize: 22,
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
