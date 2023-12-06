import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key, required ListView child});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  static const IconData restaurant =
      IconData(0xe532, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/food.jpg"), fit: BoxFit.cover),
              color: Color.fromARGB(255, 187, 103, 202),
            ),
            child: Text(
              'Menü',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.pinkAccent.withOpacity(0.5),
                Colors.purple.withOpacity(0.8)
              ],
            )),
            child: ListTile(
                title: const Text("Başlangıçlar"),
                leading: const Icon(
                  Icons.breakfast_dining_outlined,
                ),
                onTap: () {
                  setState(() {});
                  Navigator.pop(context);
                }),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.blue.withOpacity(0.5),
                Colors.purple.withOpacity(0.9)
              ],
            )),
            child: ListTile(
                title: const Text("Ara Sıcaklar"),
                leading: const Icon(
                  Icons.dinner_dining_outlined,
                ),
                onTap: () {
                  setState(() {});
                  Navigator.pop(context);
                }),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.greenAccent.withOpacity(0.5),
                Colors.purple.withOpacity(0.9)
              ],
            )),
            child: ListTile(
              title: const Text("Ana Yemekler"),
              leading: const Icon(
                Icons.brunch_dining_outlined,
              ),
              onTap: () {
                setState(() {});
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.deepOrange.withOpacity(0.5),
                Colors.purple.withOpacity(0.9)
              ],
            )),
            child: ListTile(
              title: const Text("Tatlılar"),
              leading: const Icon(
                Icons.bakery_dining_outlined,
              ),
              onTap: () {
                setState(() {});
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
