import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/components/re_components.dart';
import 'package:news/cubit/cubit.dart';
import 'package:news/cubit/states.dart';


class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var science = NewsCubit.get(context).science;
        return ConditionalBuilder(
          condition: science.isNotEmpty,
          builder: (context) => buildConditionalItem(science),
          fallback: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
