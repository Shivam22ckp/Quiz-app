import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static String userlevel4 = "USERKEY";
  static String userlevel5 = "USERKEYNAME";
  static String userNameKey = "USERNAMEKEY";
  static String userLevel3 = "USERDISPLAYNAMEKEY3";
  static String userLevel7 = "USERDISPLAYNAMEKEY7";
  static String userLevel8 = "USERDISPLAYNAMEKEY8";
  static String userLevel9 = "USERDISPLAYNAMEKEY9";
  static String userLevel10 = "USERDISPLAYNAMEKEY10";
  static String userLevel11 = "USERDISPLAYNAMEKEY11";
  static String userLevel12 = "USERDISPLAYNAMEKEY12";
  static String userEmailKey = "USEREMAILKEY";
  static String userLevel2 = "USERLEVELPOINT";
  static String userAddressKey = "USERADDRESSKEY";
  static String userPhoneKey = "USERPHONEKEY";
  static String usercomp6 = "USERLEVEL6";
  static String usercomp7 = "USERLEVEL7";
  static String usercomp8 = "USERLEVEL8";
  static String usercomp9 = "USERLEVEL9";
  static String usercomp10 = "USERLEVEL10";
  static String usercomp11 = "USERLEVEL11";
  static String usercomp12 = "USERLEVEL12";
  static String userlevel6 = "USERKEY6";
  static String userLevel1 = "0";

  //save data
  Future<bool> saveUserName(String getUserName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNameKey, getUserName);
  }

  Future<bool> saveUserEmail(String getUserEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userEmailKey, getUserEmail);
  }

  Future<bool> saveUserPhone(String getUserPhone) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userPhoneKey, getUserPhone);
  }

  Future<bool> savecomplevel(String getcomplevel) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(usercomp6, getcomplevel);
  }

  Future<bool> savecomplevel7(String getcomplevel7) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(usercomp7, getcomplevel7);
  }

  Future<bool> savecomplevel8(String getcomplevel8) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(usercomp8, getcomplevel8);
  }

  Future<bool> savecomplevel12(String getcomplevel12) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(usercomp12, getcomplevel12);
  }

  Future<bool> savecomplevel9(String getcomplevel9) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(usercomp9, getcomplevel9);
  }

  Future<bool> savecomplevel10(String getcomplevel10) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(usercomp10, getcomplevel10);
  }

  Future<bool> savecomplevel11(String getcomplevel11) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(usercomp11, getcomplevel11);
  }

  Future<bool> saveUserAddress(String getUserAddress) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userAddressKey, getUserAddress);
  }

  Future<bool> saveUserLevel1(String getUserLevel1) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userLevel1, getUserLevel1);
  }

  Future<bool> saveUserLevel2(String getUserLevel2) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userLevel2, getUserLevel2);
  }

  Future<bool> saveUserLevel3(String getUserLevel3) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userLevel3, getUserLevel3);
  }

  Future<bool> saveUserLevel4(String getUserLevel4) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userlevel4, getUserLevel4);
  }

  Future<bool> saveUserLevel5(String getUserLevel5) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userlevel5, getUserLevel5);
  }

  Future<bool> saveUserLevel6(String getUserLevel6) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userlevel6, getUserLevel6);
  }

  Future<bool> saveUserLevel7(String getUserLevel7) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userLevel7, getUserLevel7);
  }

  Future<bool> saveUserLevel8(String getUserLevel8) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userLevel8, getUserLevel8);
  }

  Future<bool> saveUserLevel9(String getUserLevel9) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userLevel9, getUserLevel9);
  }

  Future<bool> saveUserLevel12(String getUserLevel12) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userLevel12, getUserLevel12);
  }

  Future<bool> saveUserLevel10(String getUserLevel10) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userLevel10, getUserLevel10);
  }

  Future<bool> saveUserLevel11(String getUserLevel11) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userLevel11, getUserLevel11);
  }

  Future<String?> getUsercomp6() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(usercomp6);
  }

  Future<String?> getUserLevel5() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userlevel5);
  }

  Future<String?> getUserPhone() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userPhoneKey);
  }

  Future<String?> getUsercomp7() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(usercomp7);
  }

  Future<String?> getUsercomp8() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(usercomp8);
  }

  Future<String?> getUsercomp9() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(usercomp9);
  }

  Future<String?> getUsercomp10() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(usercomp10);
  }

  Future<String?> getUsercomp11() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(usercomp11);
  }

  Future<String?> getUsercomp12() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(usercomp12);
  }

  // get data
  Future<String?> getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNameKey);
  }

  Future<String?> getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userEmailKey);
  }

  Future<String?> getUserAddress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userAddressKey);
  }

  Future<String?> getUserLevel1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userLevel1);
  }

  Future<String?> getUserLevel2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userLevel2);
  }

  Future<String?> getUserLevel6() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userlevel6);
  }

  Future<String?> getUserLevel7() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userLevel7);
  }

  Future<String?> getUserLevel8() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userLevel8);
  }

  Future<String?> getUserLevel9() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userLevel9);
  }

  Future<String?> getUserLevel12() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userLevel12);
  }

  Future<String?> getUserLevel10() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userLevel10);
  }

  Future<String?> getUserLevel11() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userLevel11);
  }

  Future<String?> getUserLevel3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userLevel3);
  }

  Future<String?> getUserLevel4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userlevel4);
  }
}
