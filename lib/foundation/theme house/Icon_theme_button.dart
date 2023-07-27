

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_easylector_app/foundation/theme%20house/theme.dart';
import 'package:provider/provider.dart';



class IconThemeButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return IconButton(
        onPressed: () {
          Provider.of<ThemeProvider>(context, listen:false).ChangeTheme();
        },

        icon: Icon(themeProvider.isDarkMode? Icons.light_mode: Icons.dark_mode)
      );
  }

}



