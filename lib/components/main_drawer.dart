import 'package:flutter/material.dart';
import 'package:meals/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createIcon(IconData icon, String label, void Function()? onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).canvasColor,
            alignment: Alignment.bottomCenter,
            child: const Text(
              'Vamos cozinhar?',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _createIcon(Icons.restaurant, 'Refeições',
              () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)),
          _createIcon(
              Icons.settings,
              'Configurações',
              () => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.SETTINGS)),
        ],
      ),
    );
  }
}
