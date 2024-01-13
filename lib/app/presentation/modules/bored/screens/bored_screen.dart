import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/path.dart';

class BoredScreen extends StatefulWidget {
  const BoredScreen({super.key});

  @override
  State<BoredScreen> createState() => _BoredScreenState();
}

class _BoredScreenState extends State<BoredScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BoredBloc>().add(const GetRandomActivity());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<BoredBloc, BoredState>(
          builder: (context, state) {
            if (state is BoredLoading) {
              return Center(
                child: loading(),
              );
            }

            if (state is BoredLoaded) {
              return body(state.bored.activity);
            }

            if (state is BoredError) {
              return body(state.message);
            }

            return const SizedBox();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<BoredBloc>().add(const GetRandomActivity());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Widget body(String text) {
    return Center(
      child: Text(
        text,
      ),
    );
  }

  Widget loading() {
    return const SizedBox(
      width: 24,
      height: 24,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
