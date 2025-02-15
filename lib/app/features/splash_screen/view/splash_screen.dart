import 'package:expense_manager/app/data/common/cubits/theme_cubit/theme_cubit.dart';
import 'package:expense_manager/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeTestScreen extends StatefulWidget {
  const ThemeTestScreen({super.key});

  @override
  _ThemeTestScreenState createState() => _ThemeTestScreenState();
}

class _ThemeTestScreenState extends State<ThemeTestScreen> {
  bool isSwitched = false;
  double sliderValue = 50.0;
  String? selectedValue = "Option 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Theme Test Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Primary & Secondary Text
              Text("Primary Text", style: Theme.of(context).textTheme.bodyLarge),
              Text("Secondary Text", style: Theme.of(context).textTheme.bodyMedium),

              const SizedBox(height: 20),

              // Buttons
              ElevatedButton(
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Outlined Button"),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: const Text("Text Button"),
              ),

              const SizedBox(height: 20),

              // Chip Example
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(
                    label: const Text("Default Chip"),
                    backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  ),
                  Chip(
                    label: const Text("Accent Chip"),
                    backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Switch Example
              BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  final Brightness systemBrightness = MediaQuery.of(context).platformBrightness;
                  bool isDarkTheme = state.themeMode == ThemeMode.system && systemBrightness == Brightness.dark || ThemeMode.dark == state.themeMode;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Dark Mode Switch"),
                      Switch(
                        value: isDarkTheme,
                        onChanged: (value) {
                          context.read<ThemeCubit>().toggleTheme();
                        },
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),

              // TextField Example
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Text',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              // Dropdown Menu Example
              DropdownButton<ThemeMode>(
                value: context.watch<ThemeCubit>().state.themeMode,
                items: const [
                  DropdownMenuItem(value: ThemeMode.light, child: Text("Light")),
                  DropdownMenuItem(value: ThemeMode.dark, child: Text("Dark")),
                  DropdownMenuItem(value: ThemeMode.system, child: Text("System")),
                ],
                onChanged: (ThemeMode? mode) {
                  if (mode != null) {
                    context.read<ThemeCubit>().setTheme(mode);
                  }
                },
              ),
              const SizedBox(height: 20),

              // Slider Example
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Slider Value: ${sliderValue.toStringAsFixed(0)}", style: Theme.of(context).textTheme.bodyMedium),
                  Slider(
                    value: sliderValue,
                    min: 0,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        sliderValue = value;
                      });
                    },
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // IconButton Example
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('IconButton Pressed')),
                  );
                },
                icon: const Icon(Icons.access_alarm),
              ),

              const SizedBox(height: 20),

              // Show SnackBar Example
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a SnackBar')),
                  );
                },
                child: const Text("Show SnackBar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
