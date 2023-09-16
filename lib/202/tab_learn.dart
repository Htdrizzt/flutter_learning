import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabController.animateTo(0);
          }),
          bottomNavigationBar: BottomAppBar(
              notchMargin: 10,
              shape: const CircularNotchedRectangle(),
              child: TabBar(controller: _tabController, tabs: const [Tab(text: 'Page1'), Tab(text: 'Page2')])),
          appBar:
              AppBar(bottom: TabBar(controller: _tabController, tabs: const [Tab(text: 'Page1'), Tab(text: 'Page2')])),
          body: TabBarView(controller: _tabController, children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            )
          ])),
    );
  }
}
