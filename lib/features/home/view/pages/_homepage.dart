import 'package:connect/features/home/model/_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

class CustomBottomNav extends ConsumerWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).colorScheme;
    final read = ref.watch(navigationProvider);
    final write = ref.read(navigationProvider);
    return Container(
      decoration: BoxDecoration(
          border:
              Border(top: BorderSide(color: theme.primary.withOpacity(.1)))),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomBottomNavItem(
                active: read.getIndex == 0,
                activeColor: theme.primary,
                inactiveColor: theme.onTertiary.withOpacity(.4),
                activeAssetUrl: "assets/icons/icons8-home-48 (1).png",
                onTap: () {
                  write.setIndex=0;
                },
                size: Size(30, 30),
                assetUrl: "assets/icons/icons8-home-48.png",
                scale: 2),
            CustomBottomNavItem(
                active: read.getIndex == 1,
                activeColor: theme.primary,
                inactiveColor: theme.onTertiary.withOpacity(.4),
                activeAssetUrl: "assets/icons/icons8-add-user-male-48.png",
                onTap: () {
                  write.setIndex=1;
                },
                size: Size(30, 30),
                assetUrl: "assets/icons/icons8-add-user-48.png",
                scale: 2),
            CustomBottomNavItem(
                active: read.getIndex == 2,
                activeColor: theme.primary,
                inactiveColor: theme.onTertiary.withOpacity(.4),
                activeAssetUrl: "assets/icons/icons8-add-48.png",
                onTap: () {
                  write.setIndex=2;
                },
                size: Size(30, 30),
                assetUrl: "assets/icons/icons8-add-50.png",
                scale: 2),
            CustomBottomNavItem(
                active: read.getIndex== 3,
                activeColor: theme.primary,
                inactiveColor: theme.onTertiary.withOpacity(.4),
                activeAssetUrl: "assets/icons/icons8-search-48 (1).png",
                onTap: () {
                  write.setIndex=3;
                },
                size: Size(30, 30),
                assetUrl: "assets/icons/icons8-search-48.png",
                scale: 2),
            CustomBottomNavItem(
                active: read.getIndex == 4,
                activeColor: theme.primary,
                inactiveColor: theme.onTertiary.withOpacity(.4),
                activeAssetUrl: "assets/icons/icons8-male-user-48 (1).png",
                onTap: () {
                  write.setIndex=4;
                },
                size: Size(30, 30),
                assetUrl: "assets/icons/icons8-male-user-48.png",
                scale: 2)
          ],
        ),
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
      required this.scale,
      required this.activeAssetUrl,
      required this.inactiveColor,
      required this.activeColor,
      required this.active});

  final VoidCallback onTap;
  final Size size;
  final String assetUrl;
  final String activeAssetUrl;
  final double scale;
  final Color inactiveColor;
  final Color activeColor;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 65,
        width: 50,
        child: Image.asset(
          active ? activeAssetUrl : assetUrl,
          width: size.width,
          height: size.height,
          // fit: BoxFit.contain,
          color: active ? activeColor : inactiveColor,
          scale: scale,
        ),
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
