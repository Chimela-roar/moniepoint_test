import 'package:flutter/material.dart';
import 'package:moniepoint_test/application/theme.dart';

class CustomTextfield extends StatelessWidget {
  final IconData icon;
  final String hintText;
  const CustomTextfield(
      {super.key, required this.icon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(33, 158, 158, 158)),
      child: TextFormField(
        style: const TextStyle(fontSize: 20),
        cursorHeight: 18,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          prefixIcon: Container(
            width: 45,
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Icon(icon, size: 20, color: deepGrey),
                const SizedBox(width: 5),
                Container(
                  height: 20,
                  width: 1,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
