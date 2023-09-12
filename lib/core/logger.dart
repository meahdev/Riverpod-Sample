
import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';

/// To see logs in the debugg mode
class Logger{
  static log ({String? functionName,required String msg}){
  if(kDebugMode)dev.log("${functionName??''}- $msg");
  }
}