import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/barret_setup/cubit.dart';
import '../../cubits/barret_setup/state.dart';

class ChannelName extends StatelessWidget {
  final int pressProgramButton;

  const ChannelName({Key? key, required this.pressProgramButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(pressProgramButton);
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const FittedBox(
            child: Text(
              "===== Channel Label =====",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black54,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<BarretSetupCubit, BarretSetupState>(
                    builder: (context, state) {
                      return Text(
                        state.channelName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.black54,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          const FittedBox(
            child: Text(
              "============================",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
