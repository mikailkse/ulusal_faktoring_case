import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'view/_bottom_navbar/viewmodel/bottom_navbar_viewmodel.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => BottomNavbarViewModel(),
          ),
        ],
        child: const MyApp(),
      ),
    );
