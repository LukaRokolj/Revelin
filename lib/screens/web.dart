import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web extends StatefulWidget {
  const Web({Key? key}) : super(key: key);

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: "https://www.clubrevelin.com/uvevent/?id=807618&dt=220805",
    );
  }
}
