import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              textHint: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              maxLines: 4,
              textHint: 'Content',
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
