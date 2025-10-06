import 'package:flutter/material.dart';
class AppBarDrawarIcon extends StatefulWidget {
  const AppBarDrawarIcon({super.key});

  @override
  State<AppBarDrawarIcon> createState() => _AppBarDrawarIconState();
}

class _AppBarDrawarIconState extends State<AppBarDrawarIcon> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  bool isMenuOpen = false; // track menu state
  void initState(){
    super.initState();
    controller=AnimationController(vsync: this,duration: const Duration(milliseconds: 200));
    animation=Tween<double>(begin: 0.0,end: 1.0).animate(controller);
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      setState(() {
        if (isMenuOpen) {
          controller.reverse(); // animate back to hamburger
        } else {
          controller.forward(); // animate to close icon
        }
        isMenuOpen = !isMenuOpen;

        // TODO: open or close your drawer/menu here
        // Example if using Scaffold:
        // if (isMenuOpen) {
        //   Scaffold.of(context).openDrawer();
        // } else {
        //   Navigator.of(context).pop();
        // }
      });


    }, icon: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: animation));

  }
}
