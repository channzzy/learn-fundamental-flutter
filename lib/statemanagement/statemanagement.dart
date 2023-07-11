// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:learn2/statemanagement/provider/done_module_provider.dart';
import 'package:provider/provider.dart';
import 'module_page.dart';

class StateManagementSetState extends StatefulWidget {
  static const routeName = '/statemanagement_setstate';
  const StateManagementSetState({Key? key}) : super(key: key);

  @override
  State<StateManagementSetState> createState() =>
      _StateManagementSetStateState();
}

class _StateManagementSetStateState extends State<StateManagementSetState> {
  final List<String> doneModuleList = [];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneModuleProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const ModulePage(),
      ),
    );
  }
}
