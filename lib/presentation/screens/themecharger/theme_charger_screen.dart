import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_formato/presentation/provider/theme_provider.dart';

class ThemeChargerScreen extends ConsumerWidget {
  
  static const name = 'theme_charger_screen';

  const ThemeChargerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final isDarkmode = ref.watch (themeNotifierProvider).isDarkmode;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Charger'),
        actions: [
          IconButton(icon: Icon(isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
          onPressed: () {
            //ref.read(isDarkmodeProvider.notifier)
            //.update((state)=> !state);
            ref.read(themeNotifierProvider.notifier)
            .toggleDarkMode;
          },)
        ],
      ),
      body: const _ThemeChargerView(),
    );
  }
}

class _ThemeChargerView extends ConsumerWidget {
  const _ThemeChargerView();

  @override
  Widget build(BuildContext context,ref) {

    final List<Color> colors= ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;
    //final int selectedColor = ref.watch(selectedColorProvider);



    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioListTile(
          title: Text('Este color', style: TextStyle(color:color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged:(value) {
            //ref.read(selectedColorProvider.notifier).state = index;
            ref.watch(themeNotifierProvider.notifier)
            .changeColorIndex(index);
          },
        );
      },
    );
  }
}
