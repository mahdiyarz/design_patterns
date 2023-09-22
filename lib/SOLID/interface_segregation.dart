//! BAD SYNTAX

import 'package:flutter/foundation.dart';

abstract class SmartDevice {
  void makeCall();
  void sendEmail();
  void browseInternet();
  void takePic();
}

class SmartPhone implements SmartDevice {
  @override
  void browseInternet() {
    debugPrint('Browsing the internet...');
  }

  @override
  void makeCall() {
    debugPrint('Making a call...');
  }

  @override
  void sendEmail() {
    debugPrint('Sending an email...');
  }

  @override
  void takePic() {
    debugPrint('Taking a picture...');
  }
}

class SmartWatch implements SmartDevice {
  @override
  void browseInternet() {
    throw UnimplementedError('This device cannot browse the internet');
  }

  @override
  void makeCall() {
    debugPrint('Making a call...');
  }

  @override
  void sendEmail() {
    throw UnimplementedError('This device cannot send an email');
  }

  @override
  void takePic() {
    throw UnimplementedError('This device cannot take a picture');
  }
}

//* GOOD SYNTAX

abstract class Phone {
  void makeCall();
}

abstract class EmailDevice {
  void sendEmail();
}

abstract class WebBrowser {
  void browseInternet();
}

abstract class Camera {
  void takePic();
}

class MySmartWatch implements Phone {
  @override
  void makeCall() {
    debugPrint('Making a call...');
  }
}

class MySmartPhone implements Phone, EmailDevice, WebBrowser, Camera {
  @override
  void browseInternet() {
    debugPrint('Browsing the internet...');
  }

  @override
  void makeCall() {
    debugPrint('Making a call...');
  }

  @override
  void sendEmail() {
    debugPrint('Sending an email...');
  }

  @override
  void takePic() {
    debugPrint('Taking a picture...');
  }
}
