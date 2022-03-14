import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/splash/infrastructure/providers.dart';

import '../../core/presentation/routes/router.gr.dart';
import '../../splash/application/splash_state.dart';

class SetPinPage extends ConsumerStatefulWidget {
  const SetPinPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SetPinPage> createState() => _SetPinPageState();
}

class _SetPinPageState extends ConsumerState<SetPinPage> {
  late TextEditingController _pinEditingController;
  late TextEditingController _confirmPineditingController;
  bool isValid = false;
  @override
  void initState() {
    _pinEditingController = TextEditingController()
      ..addListener(() {
        if (_pinEditingController.text.isNotEmpty &&
            _pinEditingController.text.length == 4 &&
            _confirmPineditingController.text.isNotEmpty &&
            _confirmPineditingController.text.length == 4) {
          setState(() {
            isValid = true;
          });
        } else {
          setState(() {
            isValid = false;
          });
        }
      });
    _confirmPineditingController = TextEditingController()
      ..addListener(() {
        if (_pinEditingController.text.isNotEmpty &&
            _pinEditingController.text.length == 4 &&
            _confirmPineditingController.text.isNotEmpty &&
            _confirmPineditingController.text.length == 4) {
          setState(() {
            isValid = true;
          });
        } else {
          setState(() {
            isValid = false;
          });
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    ref.listen<SplashState>(splashNotifierProvider, (previous, next) {
      next.maybeWhen(
        pinSet: () => context.replaceRoute(const AuthRoute()),
        error: (failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(failure.message),
            ),
          );
        },
        orElse: () {},
      );
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create a PIN to secure your information',
                  style: theme.textTheme.button!,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: _pinEditingController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(4),
                    ],
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'PIN',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: _confirmPineditingController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(4),
                    ],
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Confirm PIN',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: isValid
                      ? () {
                          ref
                              .read(splashNotifierProvider.notifier)
                              .setPin(_pinEditingController.text);
                        }
                      : null,
                  child: Text(
                    'Sign up',
                    style: theme.textTheme.button!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
