import 'package:flutter/material.dart';
import 'package:flutter_responsive/presentation/ui/widgets/dashboard_card.dart';
import 'package:flutter_responsive/presentation/ui/widgets/nav_menu.dart';
import 'package:flutter_responsive/presentation/ui/widgets/responsive_builder.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: _buildMobileLayout(),
      tablet: _buildTabletLayout(),
      desktop: _buildDesktopLayout(),
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.green,
      ),
      drawer: const NavMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getSummarySection(crossAxisCount: 1, ratio: 2.4),
          ],
        ),
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.green,
      ),
      drawer: const NavMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getSummarySection(crossAxisCount: 2, ratio: 2),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Scaffold(
      body: Row(
        children: [
          const NavMenu(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _getSummarySection(crossAxisCount: 4, ratio: 1.2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getSummarySection(
      {required int crossAxisCount, required double ratio}) {
    return GridView(
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
        mainAxisExtent: 180,
      ),
      children: const [
        DashBoardCard(),
        DashBoardCard(),
        DashBoardCard(),
        DashBoardCard(),
      ],
    );
  }
}
