import 'package:flutter/material.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class UpdateFieldScreen extends StatelessWidget {
  const UpdateFieldScreen({
    super.key,
    required this.title,
    required this.controller,
    required this.validator,
    required this.onSave,
  });

  final String title;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final Future<void> Function(String value) onSave;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Update $title',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        backButtonVisibility: true,
      ),
      body: Padding(
        padding: TSpacingStyle.paddingDefault,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please use your real $title for verification. This data is used for your shopping activities.',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary),
            ),
            const SizedBox(height: TSizes.bigSectionGap,),

            Form(
              key: formKey,
              child: Column(
              children: [
                TextFormField(
                  controller: controller,
                  validator: validator,
                  decoration: InputDecoration(labelText: title),
                ),

                const SizedBox(height: TSizes.textFieldGap,),

                SizedBox(
                width: double.infinity,
                height: TSizes.buttonHeight,
                child: ElevatedButton(
                  onPressed:() async {
                    if (formKey.currentState!.validate()) {
                      await onSave(controller.text.trim());
                    }
                  }, 
                  child: Text('Save', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),),
                ),
              ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}