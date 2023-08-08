import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:varanasi_mobile_app/features/library/cubit/library_cubit.dart';

import 'app_bar.dart';

class LibraryContent extends StatelessWidget {
  const LibraryContent({super.key});

  @override
  Widget build(BuildContext context) {
    final state =
        context.select((LibraryCubit cubit) => cubit.state as LibraryLoaded);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          LibraryAppbar(state: state),
        ],
      ),
    );
  }
}