import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndictor extends StatelessWidget {
  const LoadingIndictor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitDualRing(
      color: Theme.of(context).primaryColor,
      size: 24,
    );
  }
}
