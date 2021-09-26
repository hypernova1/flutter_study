void main() {
  showData();
}

void showData() async {
  startTask();
  String account = await accessData();
  fetchData(account);
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

Future<String> accessData() async {
  String account = '';
  Duration time = const Duration(seconds: 3);
  print(time.inSeconds);
  if (time.inSeconds > 2) {
    //sleep(time);
    await Future.delayed(time, () {
      account = '8500만';
      print(account);
    });
  } else {
    account = '데이터를 가져왔습니다.';
    print(account);
  }

  return account;
}

void fetchData(String account) {
  String info3 = '잔액은 $account원 입니다.';
  print(info3);
}