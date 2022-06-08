import 'package:provider/provider.dart';
import '../classes/_core.dart'; // loads all the "core" classes
import '../providers/Controller.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/_all.dart';
import 'package:flutter_html/flutter_html.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = context.read<Controller>();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amberAccent[100],
              child: Center(
                child: Html(
                  //data: '<div style="text-align: center;">This is <b>HTML</b></div>',
                  data: controller.getHtmlFrag('startpage_example')
                )
              )
            ),
          ),
          Flexible(
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            alignment: Alignment.bottomCenter,
                            curve: Curves.easeInOut,
                            duration: Duration(milliseconds: 600),
                            reverseDuration: Duration(milliseconds: 600),
                            type: PageTransitionType.rightToLeftJoined,
                            child: EndPage(),
                            childCurrent: this));
                  },
                  child: const Text('Go To EndPage >')),
            ),
          ),
        ],
      ),
    );
  }
}
