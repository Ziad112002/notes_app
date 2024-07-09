import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 25, bottom: 25, left: 16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
            color: const Color(0xffffcc80),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              isThreeLine: true,
              title: const Text(
                "Flutter Tips",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  "Build your career with Tharwat Samy",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
              trailing: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 26,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Text(
                'May21,2022',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
