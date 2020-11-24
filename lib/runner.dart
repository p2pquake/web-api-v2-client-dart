import 'api.dart';

main(List<String> args) async {
  print(await V2Api().historyGet());
  print(await V2Api().historyGet(codes: [551], limit: 100));
}
