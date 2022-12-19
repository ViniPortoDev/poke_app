import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String text;

  const ButtonWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
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
              Icons.catching_pokemon,
              size: 25,
              color: isSelected == true ? Colors.grey : Colors.white,
            ),
            const SizedBox(width: 10),
            Text(
              widget.text,
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
