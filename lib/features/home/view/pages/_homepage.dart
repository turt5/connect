import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.tertiary,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: theme.tertiary,
                    floating: true,
                    pinned: false,
                    elevation: 0,
                    surfaceTintColor: theme.tertiary,
                    snap: true,
                    centerTitle: false,
                    title: Row(
                      children: [
                        Text(
                          'Connect',
                          style: GoogleFonts.pacifico(
                              fontSize: 22, color: theme.onTertiary),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Transform.translate(
                            offset: Offset(0, 5),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: theme.onTertiary,
                              size: 18,
                            ))
                      ],
                    ),
                    leading: null,
                    actions: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            CustomAction(
                                assetUrl:
                                    'assets/icons/icons8-favourite-48.png',
                                size: Size(25, 25),
                                color: theme.onTertiary,
                                onTap: () {}),
                            const SizedBox(
                              width: 20,
                            ),
                            CustomAction(
                                assetUrl:
                                    'assets/icons/icons8-messenger-48.png',
                                size: Size(25, 25),
                                color: theme.onTertiary,
                                onTap: () {}),
                          ],
                        ),
                      )
                    ], // Ensures no extra buttons are added
                    automaticallyImplyLeading:
                        false, // Prevents any default leading widget
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => ListTile(
                        title: Text(
                          'Item $index',
                          style: TextStyle(color: theme.onTertiary),
                        ),
                      ),
                      childCount: 50, // Example number of items
                    ),
                  ),
                ],
              ),
            ),
            CustomBottomNav()
          ],
        ),
      ),
    );
  }
}

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBottomNavItem(
              onTap: () {},
              size: Size(30, 30),
              assetUrl: "assets/icons/icon8-home-48.png",
              scale: 1)
        ],
      ),
    );
  }
}

class CustomBottomNavItem extends StatelessWidget {
  const CustomBottomNavItem(
      {super.key,
      required this.onTap,
      required this.size,
      required this.assetUrl,
      required this.scale});

  final VoidCallback onTap;
  final Size size;
  final String assetUrl;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Image.asset(
            assetUrl,
            width: size.width,
            height: size.height,
            fit: BoxFit.contain,
            scale: scale,
          ),
        ],
      ),
    );
  }
}

class CustomAction extends StatelessWidget {
  const CustomAction(
      {super.key,
      required this.assetUrl,
      required this.size,
      required this.color,
      required this.onTap});
  final String assetUrl;
  final Size size;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        assetUrl,
        color: color,
        width: size.width,
        height: size.height,
        fit: BoxFit.contain,
      ),
    );
  }
}
