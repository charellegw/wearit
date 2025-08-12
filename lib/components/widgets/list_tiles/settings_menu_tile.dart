import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';

class TSettingsMenuTile extends StatelessWidget {
  const TSettingsMenuTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      this.trailing,
      this.onTap}
  );

  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 20, color: TColors.primaryColor,),
      title: Text(title, style: Theme.of(context).textTheme.bodyMedium,),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelLarge,),
      trailing: trailing,
      onTap: onTap,
    );
  }
}