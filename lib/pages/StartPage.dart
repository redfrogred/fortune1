import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class StartPage extends StatelessWidget {
  const StartPage({ Key? key }) : super(key: key);

   @override
  Widget build(BuildContext context) {

    var controller = context.read<Controller>();
    
    return Scaffold(

      body: Column(
        children: [
          const Flexible(
            child: Center(
                      child: Text('StartPage'),
                    ),
          ),
          Flexible(
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  controller.setCurrentPage( context, 1 );
                }, 
                child: const Text('Go To EndPage')
              ),
            ),
          ),          
        ],
      ),
    );
  }
}