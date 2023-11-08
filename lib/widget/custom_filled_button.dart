import 'package:flutter/material.dart';
import 'package:moniepoint_test/application/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;
  final bool disabled;
  final Function()? onTap;

  const CustomFilledButton(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.disabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    final style = ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        )),
        alignment: Alignment.center,
        backgroundColor: MaterialStateProperty.all<Color>(
            disabled ? greyColor : orangeColor),
        minimumSize: MaterialStateProperty.all<Size>(
            Size(double.infinity, height * 0.065)));
    return ElevatedButton(
        onPressed: disabled ? null : onTap,
        style: style,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: disabled ? Colors.black : Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ));
  }
}
