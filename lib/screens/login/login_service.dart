

class LoginService {

/*
  Future<TherapyCenterGuidResponse?> therapyCenterGuidIdGet(
      String guidId) async {
    var url = NetworkUrls().therapyCentersGuidIdUrl + guidId;
    var response =
        await NetworkService().makeRequest(url, type: RequestType.get);
    if (response.isSuccessful &&
        response.data != null &&
        response.data!.isNotEmpty) {
      return TherapyCenterGuidResponse.fromJson(response.data!.first);
    }
    return null;
  }

  Future<dynamic> userSignUpPost(SignUpRequest request) async {
    var url = NetworkUrls().signUpUrl;
    var response = await NetworkService().makeRequest(url,
        body: json.encode(request.toJson()), type: RequestType.post);
    if (response.isSuccessful &&
        response.data != null &&
        response.data!.isNotEmpty) {
      return true;
    } else if (response.isSuccessful == false &&
        response.data == null &&
        response.message == "alreadyRegisteredUser") {
      return "alreadyRegisteredUser";
    }
    return false;
  }

  Future<List<Data?>> countriesGet() async {
    List<Data> dataList = [];
    var url = NetworkUrls().countriesUrl;
    var response =
        await NetworkService().makeRequest(url, type: RequestType.get);
    if (response.isSuccessful &&
        response.data != null &&
        response.data!.isNotEmpty) {
      response.data!.forEach((element) {
        dataList.add(Data.fromJson(element));
      });
      return dataList;
    }else {
      return [];
    }
    
  }
  */
}
