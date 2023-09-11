
import 'package:flutter/material.dart';

/// app color
enum AppColor{
  white(Colors.white),
  green(Colors.green),
  grey(Colors.grey),
  black(Colors.black);
  final Color val;
  const AppColor (this.val);
}

/// Application Strings
enum AppString{
  ///app labels
  email("Email"),
  password("Password"),
  signIn("Sign In"),
  home("Home"),
  account("Account"),

  ///validation
  emptyEmail("Enter email address"),
  inValidEmail("Enter valid email address"),
  emptyPassword("Enter Password"),

  ///exceptions
  somethingWentWrong("Something Went Wrong !, Please Try Again Later"),
  requestCancelled("Request was cancelled"),
  connectionTimeOut("Connection timeout"),
  receiveTimeOutInConnection("Receive timeout in connection"),
  badRequest("Bad request"),
  unAuthorized("UnAuthorized"),
  sessionExpired("Your Session is expired, please login to continue"),
  receiveTimeOutInSendRequest("Receive timeout in send request"),
  noInternetConnection("No Internet Connection");
  final String val;
  const AppString ( this.val);
}

/// for SVG paths
enum SVG{
  splash("assets/images/svg/splash.svg");
  final String val;
  const SVG (this.val);
}

/// for png paths
enum PNG{
  logo("assets/images/png/logo.png");
  final String val;
  const PNG (this.val);
}

/// for double values
enum DBL {
  zero(0.0),
  one(1.0),
  two(2.0),
  three(3.0),
  four(4.0),
  five(5.0),
  six(6.0),
  seven(7.0),
  eight(8.0),
  nine(9.0),
  ten(10.0),
  eleven(11.0),
  twelve(12.0),
  thirteen(13.0),
  fourteen(14.0),
  fifteen(15.0),
  sixteen(16.0),
  seventeen(17.0),
  eighteen(18.0),
  nineteen(19.0),
  twenty(20.0),
  twentyOne(21.0),
  twentyTwo(22.0),
  twentyThree(23.0),
  twentyFour(24.0),
  twentyFive(25.0),
  twentySeven(27.0),
  twentyEight(28.0),
  twentyNine(29.0),
  thirty(30.0),
  thirtyOne(31.0),
  thirtyTwo(32.0),
  thirtyThree(33.0),
  thirtyFour(34.0),
  thirtyFive(35.0),
  thirtySix(36.0),
  thirtySeven(37.0),
  thirtyEight(38.0),
  thirtyNine(39.0),
  forty(40.0),
  fortyOne(41.0),
  fortyTwo(42.0),
  fortyThree(43.0),
  fortyFour(44.0),
  fortyFive(45.0),
  fortySix(46.0),
  fortySeven(47.0),
  fortyEight(48.0),
  fortyNine(49.0),
  fifty(50.0),
  fiftyOne(51.0),
  fiftyTwo(52.0),
  fiftyThree(53.0),
  fiftyFour(54.0),
  fiftyFive(55.0),
  sixty(60.0),
  sixtyFive(65.0),
  sixtyEight(68.0),
  seventy(70.0),
  seventyTwo(72.0),
  seventyFive(75.0),
  eighty(80.0),
  eightyFive(85.0),
  eightyNine(89.0),
  ninetyTwo(92.0),
  ninetyFive(95.0),
  hundred(100.0),
  hundredSeventeen(117.0);
  final double val;

  const DBL(this.val);
}

/// for int values
enum INT {
  zero(0),
  one(1),
  two(2),
  three(3),
  four(4),
  five(5),
  six(6),
  seven(7),
  eight(8),
  nine(9),
  ten(10),
  eleven(11),
  twelve(12),
  thirteen(13),
  fourteen(14),
  fifteen(15),
  sixteen(16),
  seventeen(17),
  eighteen(18),
  nineteen(19),
  twenty(20);

  final int val;

  const INT(this.val);
}


///font size
enum FS {
  font05(05.0),
  font06(06.0),
  font07(07.0),
  font08(08.0),
  font10(10.0),
  font11(11.0),
  font12(12.0),
  font13(13.0),
  font14(14.0),
  font15(15.0),
  font16(16.0),
  font17(17.0),
  font18(18.0),
  font19(19.0),
  font20(20.0),
  font21(21.0),
  font22(22.0),
  font23(23.0),
  font24(24.0),
  font25(25.0);

  final double val;

  const FS(this.val);
}

