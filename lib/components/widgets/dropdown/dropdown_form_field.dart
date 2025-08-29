import 'package:flutter/material.dart';
import 'package:wearit/utils/helpers/helper.dart';

/// A dropdown form field with optional title to be displayed.
class TDropdownFormField extends StatelessWidget {
  const TDropdownFormField({
    super.key,
    this.icon,
    this.title,
    required this.items,
    required this.onChanged,
  });

  final String? title;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          
        DropdownButtonFormField(
          hint: (title != null) ? Text(title!) : null,
          decoration: InputDecoration(prefixIcon: Icon(icon),),
          style: TextStyle(
            fontSize: 14, 
            color: darkMode ? Colors.white : Colors.black,
          ),

          onChanged: onChanged,
          items: items.map((option) => DropdownMenuItem(
              value: option, 
              child: Text(option),
            )).toList(),
        )
      ],
    );
  }
}