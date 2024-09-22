import 'package:dnd_helper_flutter/app/widgets/addeble_scrolling_field.dart';
import 'package:dnd_helper_flutter/app/widgets/scrollable_number_field.dart';
import 'package:flutter/material.dart';

class Statblock extends StatefulWidget {
  const Statblock({super.key});

  @override
  State<Statblock> createState() => StatblockState();
}

class StatblockState extends State<Statblock> {
  // Переносим создание контроллера в State
  final TextEditingController lvl = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController hp = TextEditingController();
  final TextEditingController ac = TextEditingController();
  final TextEditingController notes = TextEditingController();
  final TextEditingController passivePerception = TextEditingController();
  final TextEditingController initiative = TextEditingController();
  final TextEditingController count = TextEditingController();

  @override
  void dispose() {
    lvl.dispose();
    name.dispose();
    hp.dispose();
    ac.dispose();
    notes.dispose();
    passivePerception.dispose();
    initiative.dispose();
    count.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 500,
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 10.0, bottom: 5.0, right: 5.0),
                      child: SizedBox(
                        width: 50,
                        child: TextField(
                          controller: lvl,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'lvl',
                              alignLabelWithHint: true,
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, top: 10.0, bottom: 5.0, right: 5.0),
                      child: SizedBox(
                        width: 100,
                        child: TextField(
                          controller: name,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, top: 10.0, bottom: 5.0, right: 5.0),
                      child: SizedBox(
                        width: 50,
                        child: TextField(
                          controller: ac,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'AC',
                              alignLabelWithHint: true,
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, top: 10.0, bottom: 5.0, right: 5.0),
                      child: SizedBox(
                        width: 60,
                        child: TextField(
                          controller: count,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Count',
                            alignLabelWithHint: true,
                            floatingLabelAlignment:
                                FloatingLabelAlignment.center,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 290,
                      height: 220,
                      child: TextField(
                        controller: notes,
                        maxLines: 10,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Notes',
                            alignLabelWithHint: true,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ScrollableNumberField(
                  controller: hp,
                  height: 50,
                  width: 70,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'HP',
                      alignLabelWithHint: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center)),
            ),
          ],
        ),
      ),
    );
  }
}
