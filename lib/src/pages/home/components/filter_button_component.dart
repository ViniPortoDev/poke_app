// ignore_for_file: must_be_immutable

import 'package:desafio02/src/models/filter_model.dart';
import 'package:flutter/material.dart';

class FilterButtonWidget extends StatefulWidget {
  final FilterModel filterModel;
  bool isSelected;
  FilterButtonWidget({
    Key? key,
    required this.filterModel,
    this.isSelected = false,
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
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: widget.isSelected == false
              ? Colors.white
              : const Color(0xffFF5F50),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.filterModel.icon,
              size: 25,
              color: widget.isSelected == false ? Colors.grey : Colors.white,
            ),
            Visibility(
              visible: widget.filterModel.text == '' ? false : true,
              child: const SizedBox(width: 10),
            ),
            Text(
              widget.filterModel.text,
              style: TextStyle(
                fontSize: 18,
                color: widget.isSelected == false ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
