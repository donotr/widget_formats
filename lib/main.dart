import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_formato/config/router/app_router.dart';
import 'package:widget_formato/config/theme/app_theme.dart';
import 'package:widget_formato/presentation/provider/theme_provider.dart';
import 'package:widget_formato/presentation/screens/home/home_screen.dart';

void main() => runApp(const ProviderScope(
  child: MainApp()
)); //cambiar a llave si no funciona

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     //final isDarkmode = ref.watch(isDarkmodeProvider);
    //final selectedColor = ref.watch(selectedColorProvider);
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    
    
    
    return  MaterialApp.router(
      title: 'Flutter widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
      
  
    );
  }
}