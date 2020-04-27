import 'package:intl/intl.dart';

class Util{
static String appId ="Your Api ID";
static String formatDate(DateTime dateTime){
  return new DateFormat("EEEE,MMM d,y").format(dateTime);
  
}
}
