import 'package:flutter_proj/localization/localizations.dart';

class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  //InsertHere
  @override
  String get homeScreen => "Trang chủ";

  @override
  String get adult => "Người lớn";

  @override
  String get child => "Trẻ em";

  @override
  String get infant => "Trẻ sơ sinh";

  @override
  String get connectionTimeoutException =>
      "Thời gian kết nối đã hết, vui lòng kiểm tra mạng của bạn.";

  @override
  String get sendTimeoutException =>
      "Thời gian gửi kết nối đã hết, vui lòng kiểm tra mạng của bạn.";

  @override
  String get receiveTimeoutException =>
      "Thời gian nhận kết nối đã hết, vui lòng kiểm tra mạng của bạn.";

  @override
  String get badCertificateException => "Chứng chỉ sai.";

  @override
  String get badResponseException => "Phản hồi sai.";

  @override
  String get cancelException => "Yêu cầu tới máy chủ API đã bị hủy.";

  @override
  String get connectionErrorException => "Lỗi kết nối.";

  @override
  String get unknownException => "Đã xảy ra lỗi.";

  @override
  String get login => "Đăng nhập";

  @override
  String get email => "Email";

  @override
  String get password => "Mật khẩu";

  @override
  String get orSocialLogin => "hoặc đăng nhập mạng xã hội";

  @override
  String get doNotHaveAnAccount => "Chưa có tài khoản?";

  @override
  String get registerAnAccount => "Đăng ký tài khoản";

  @override
  String get forgotPassword => "Quên mật khẩu?";

  @override
  String get resetPassword => "Đặt lại mật khẩ";

  @override
  String get home => "Trang chủ";

  @override
  String get allProperties => "Tất cả tài sản";

  @override
  String get chatting => "Tin nhắn";

  @override
  String get news => "Tin tức";

  @override
  String get myPage => "Trang của tôi";

  @override
  String get friendList => "Danh sách bạn bè";
}
