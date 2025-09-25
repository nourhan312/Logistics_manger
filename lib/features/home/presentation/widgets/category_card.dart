// lib/features/home/presentation/widgets/category_card.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final String svgPath;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isEnabled;

  const CategoryCard({
    super.key,
    required this.svgPath,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: isEnabled ? AppColors.textPrimary : AppColors.textSecondary,
    );
    final subtitleStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
      fontSize: 14,
      color: isEnabled ? AppColors.textSecondary : AppColors.statusDisabled,
    );

    return Card(
      color: isEnabled ? AppColors.cardBackground : AppColors.background,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: isEnabled ? onTap : null,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                svgPath,
                height: 40,
                width: 40,
                color: isEnabled
                    ? AppColors.primaryAccent
                    : AppColors.statusDisabled,
              ),
              const SizedBox(height: 20),
              Text(title, style: titleStyle),
              const SizedBox(height: 8),
              Text(subtitle, style: subtitleStyle),
            ],
          ),
        ),
      ),
    );
  }
}
