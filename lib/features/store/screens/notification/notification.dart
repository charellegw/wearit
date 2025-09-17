import 'package:flutter/material.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/features/store/screens/notification/widgets/notification_item.dart';
import 'package:wearit/utils/constants/sizes.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key, });

  // final ValueNotifier<bool> inSelectionMode = ValueNotifier(false);
  // final ValueNotifier<List<bool>> selectedItems = ValueNotifier(List.generate(5, (_) => false));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        backButtonVisibility: true,
        title: Text( 'Notifications', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingDefault,
          child: Column(
            children: [
              TSectionHeader(title: 'Unread Notification (4)', buttonVisible: true, buttonText: 'Mark all as read', buttonOnPressed: (){},),
              // const SizedBox(height: TSizes.defaultGap,),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (_, index) => TNotificationItem(timestamp: DateTime.now(),),
                separatorBuilder: (_, __) => const SizedBox( height: TSizes.gridGap, ),
              ),
              const SizedBox(height: TSizes.sectionGap,),
        
              /// Selectable Notification
              TSectionHeader(title: 'All Notifications', buttonVisible: true, 
              // buttonText: () => (
              //     ValueListenableBuilder<bool>(
              //       valueListenable: inSelectionMode, 
              //       builder: (context, value, _) => return 'Delete',
              //     )
              //   ), 
              //   buttonOnPressed: () => inSelectionMode = true ,
                ),
              const SizedBox(height: TSizes.defaultGap,),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (_, index) => TNotificationItem(showCheckBox: true, timestamp: DateTime.now(),),
                separatorBuilder: (_, __) => const SizedBox( height: TSizes.gridGap, ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}