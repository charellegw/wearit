import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/common/widgets/app_bar.dart';
import 'package:wearit/common/widgets/custom_container/app_header.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';
import 'package:wearit/utils/helpers/helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TAppHeader(
              child: Column(
                children: [
                  TAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TTexts.appBarTitle,
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textWhite),
                        ),
                        Text(
                          TTexts.appBarUsername,
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: TColors.textWhite),
                        ),
                      ],
                    ),
                    actions: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: SizedBox(
                              width: TSizes.iconButtonSize,
                              height: TSizes.iconButtonSize,
                              child: ElevatedButton(
                                onPressed: (){}, 
                                style: ElevatedButton.styleFrom(
                                  iconColor: Colors.black,
                                  backgroundColor: darkMode
                                    ? TColors.buttonSecondaryDark
                                    : TColors.backgroundLight,
                                ),
                                child: Icon(Iconsax.notification)
                              ),
                                                        ),
                            ),
                          
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Container(
                              padding: const EdgeInsets.all(TSizes.sm),
                              decoration: BoxDecoration(
                                color: TColors.errorRed,
                                borderRadius: BorderRadius.circular(TSizes.md),
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 15,
                                minHeight: 15,
                              ),
                              child: Text(
                                '99+',
                                style: Theme.of(context).textTheme.labelMedium!.copyWith(color: TColors.textWhite, fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
