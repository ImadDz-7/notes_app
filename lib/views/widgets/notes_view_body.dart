import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
import 'package:notes_app/views/widgets/custon_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
