//this class for collect all api's endpoin
class ApiService {
  //****************************************************************************
  //##########--Dev--##########Name: Rak
  //****************************************************************************
  // static const baseUrl = '';
  // static const version = 'v1.0.0';
  // static const target = 'dev';

  ///****************************************************************************
  //##########--UAT--##########Name: Rak
  //****************************************************************************
  static const baseUrl = 'https://uat-ditech.ditech.software';
  static const method = "/api/method/";
  static const resource = "/api/resource/";
  static const version = 'UAT-1.0.0';
  static const target = 'uat';

  //****************************************************************************
  //##########--Production--##########Name: Rak
  //****************************************************************************
  // static const baseUrl = 'https://103ditech.ditech.software';
  // static const version = 'PRO-V1.0.0';
  // static const midResource = '/api/resource/';
  // static const midMethod = '/api/method/';
  // static const target = 'pro';

  // ****************************************************************************
  // ##########--Realease--##########Name: Rak
  // ****************************************************************************
  // static const baseUrl = '';
  // static const version = 'V1.0.0';
  // static const midResource = '/api/resource/';
  // static const midMethod = '/api/method/';
  // static const target = 'Release';
}
