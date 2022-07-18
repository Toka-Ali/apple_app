
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:farghaly/screens/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../bloc/cubit.dart';


class FaceBookScreen extends StatefulWidget {
  const FaceBookScreen({Key? key}) : super(key: key);

  @override
  State<FaceBookScreen> createState() => _FaceBookScreenState();
}

class _FaceBookScreenState extends State<FaceBookScreen> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return   Form(
      key: formKey,
      child: BlocConsumer< AppCubit, AppStates>(
        builder:(context,state){
          return Scaffold(
            appBar: AppBar(
            ),
            body: ConditionalBuilder(
                builder: (context)
                {
                  return const WebView(
                    initialUrl: "https://pub.dev/packages/flutter_webview_plugin",
                  );
                },
                fallback: (context)
                {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                condition: state is! AppLoadingState,

          ));
        },
        listener: (context,state){},
        ),
    );
  }
}
