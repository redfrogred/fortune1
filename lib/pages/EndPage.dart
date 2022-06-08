import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class EndPage extends StatelessWidget {
  const EndPage({ Key? key }) : super(key: key);

   @override
  Widget build(BuildContext context) {

    var controller = context.read<Controller>();
    
    return Scaffold(

      body: Column(
        children: [
          const Flexible(
            child: Center(
                      child: Text('EndPage'),
                    ),
          ),
          Flexible(
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  controller.setCurrentPage( context, 0 );
                }, 
                child: const Text('Go Back')
              ),
            ),
          ),          
        ],
      ),
    );
  }
}