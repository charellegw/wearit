import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

/// An text field for voucher code input with apply button.
class TVoucherInput extends StatelessWidget {
  const TVoucherInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      borderVisibility: true,
      borderColor: TColors.borderSecondary.withAlpha(120),
      radius: TSizes.md,
      padding: const EdgeInsets.all(TSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter voucher code...',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),
    
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                foregroundColor: THelper.isDarkMode(context) ? Colors.white.withAlpha(120) : Colors.black.withAlpha(120),
                backgroundColor: Colors.grey.withAlpha(50),
                side: BorderSide(color: Colors.grey.withAlpha(30)),
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}