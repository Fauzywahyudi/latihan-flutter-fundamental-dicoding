import 'package:flutter/material.dart';
import 'modul_tile.dart';

class ModuleList extends StatefulWidget {
  final List<String> doneModuleList;
  ModuleList({this.doneModuleList});
  @override
  _ModuleListState createState() => _ModuleListState();
}

class _ModuleListState extends State<ModuleList> {
  final List<String> moduleList = [
    'Modul 1 - Pengenalan Dart',
    'Modul 2 - Memulai Pemrograman dengan Dart',
    'Modul 3 - Dart Fundamental',
    'Modul 4 - Control Flow',
    'Modul 5 - Collections',
    'Modul 6 - Object Oriented Programming',
    'Modul 7 - Functional Styles',
    'Modul 8 - Dart Type System',
    'Modul 9 - Dart Futures',
    'Modul 10 - Effective Dart',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: moduleList.length,
      itemBuilder: (context, index) {
        return ModuleTile(
          moduleName: moduleList[index],
          isDone: widget.doneModuleList.contains(moduleList[index]),
          onClick: () {
            setState(() {
              widget.doneModuleList.add(moduleList[index]);
            });
          },
        );
      },
    );
  }
}
