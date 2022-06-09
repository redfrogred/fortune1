// ignore_for_file: camel_case_types, non_constant_identifier_names

import './Config.dart';
import './Utils.dart';

class Html_Frags {

    Html_Frags() {
      Utils.log('HTML_Frags() class ("html_frags.dart") initialized');      
    }

    // this is a whack of HTML fragments for various things...
    // some small fragments, some whole pages of info
    // (which should be obvious by the key name)
    String frag( String key ) {

     //Utils.log('(html_frags.dart) frag() with array size of ' + arr.length.toString());   

     String frag = "(empty frag)";

     switch( key ) {
       // THESE BE FOR: the main headline (like "Are you ready for Today's Challenge?")
       case 'startpage_headline': {
        frag = '<div style="text-align: center;"><p style="font-size: 16px;">Thhis is simply an<br /><b style="font-size: 20px;">HTML EXAMPLE!</b></p></div>';
        break;
       }   
       case 'startpage_mssg_upper': {
        frag = '<div style="text-align: center;"><p style="font-size: 16px;">Some upper message</p></div>';
        break;
       }   
       case 'startpage_mssg_lower': {
        frag = '<div style="text-align: center;"><p style="font-size: 16px;">Some lower message</p></div>';
        break;
       }                 
     }
    return frag;
  }

}