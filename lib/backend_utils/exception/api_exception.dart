
class appException implements Exception{
  final messages;
  final prefix;
  appException(this.messages,this.prefix);


  @override
  String toString(){
    return '$messages$prefix';
  }
}

class handleLocationError extends appException {
  handleLocationError([String? messages]) : super (messages,'Unable to obtain location');
}

class apiException extends appException {
  apiException([String? messages]) : super (messages,'No Internet connection');
}

class noInternetException extends appException {
  noInternetException([String? messages]) : super (messages,'No Internet connection');
}

class timeOutException extends appException {
  timeOutException([String? messages]) : super (messages,'No Internet connection');
}

