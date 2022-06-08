// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../classes/Html_Frags.dart';
import '../classes/Utils.dart';

// This is the "brains" of the app... 90% of it is for pushing UI
// changes...

class Controller with ChangeNotifier {

  Controller () {
    Utils.log('Controller() class ("Controller.dart") initialized');
  }

 // grab the html snippets class
  Html_Frags htm = Html_Frags();
  
  // =================
  // NAVIGATION STUFF
  // =================
  
  static int _currentPageIndex = 0;

  final List<String> _currentPageArray = [
      '/StartPage',
      '/EndPage',
  ];

  int getCurrentPageIndex() {
    return _currentPageIndex;
  }  

  void setCurrentPage( context, int num ) {
    Utils.log('(Controller.dart) setCurrentPage() to "' + _currentPageArray[num] + '"');
    _currentPageIndex = num;
    // do the navigation
    Navigator.of(context).pushNamed(_currentPageArray[num]);
  }  

  // this uses the Html_Frags() to serve up the pre-fab snippets of HTML
  String getHtmlFrag( String key ) {

    // some snippets need some variables passed in, which is done
    // with an array of strings here:
    // (there is nothing yet... in Daily5 I pass an array as a 2nd param...)
    return htm.frag( key );

  }  

}