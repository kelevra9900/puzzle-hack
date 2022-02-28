import 'package:flutter/material.dart';
import 'package:puzzle_hack/generated/l10n.dart';
import 'package:puzzle_hack/src/ui/global/widgets/up_to_down.dart';
import 'package:puzzle_hack/src/ui/icons/puzzle_icons.dart';
import 'package:puzzle_hack/src/ui/utils/colors.dart';
import 'package:puzzle_hack/src/ui/utils/dark_mode_extension.dart';
import 'package:puzzle_hack/src/ui/utils/time_parser.dart';
import 'package:rive/rive.dart';

Future<void> showWinnerDialog(
  BuildContext context, {
  required int moves,
  required int time,
}) {
  return showDialog(
    context: context,
    builder: (_) => WinnerDialog(
      moves: moves,
      time: time,
    ),
  );
}

class WinnerDialog extends StatelessWidget {
  final int moves;
  final int time;
  const WinnerDialog({
    Key? key,
    required this.moves,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final texts = S.current;
    final isDarkMode = context.isDarkMode;
    return Center(
      child: UpToDown(
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: isDarkMode ? darkColor : lightColor,
          child: SizedBox(
            width: 340,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AspectRatio(
                  aspectRatio: 1.2,
                  child: Stack(
                    children: [
                      const Center(
                        child: RiveAnimation.asset(
                          'assets/rive/winner.riv',
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                texts.great_job,
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                texts.completed,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    PuzzleIcons.watch,
                                  ),
                                  Text(
                                    parseTime(time),
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.multiple_stop_rounded,
                                  ),
                                  Text(
                                    "${texts.movements} $moves",
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 0.6,
                  color: isDarkMode ? Colors.white24 : Colors.black12,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      texts.ok,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
