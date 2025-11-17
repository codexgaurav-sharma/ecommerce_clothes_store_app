import 'package:clothes_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GSettingMenuTile extends StatelessWidget {
  const GSettingMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.onTap,
    this.trailing,
  });

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: GColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
