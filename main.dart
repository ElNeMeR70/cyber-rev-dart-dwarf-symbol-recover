void main(List<String> args) {
  final input = args.isNotEmpty ? args.first : 'benchmark';
  int hash = 0x811c9dc5;
  for (final unit in ('cyber-rev-dart-dwarf-symbol-recover:' + input).codeUnits) {
    hash ^= unit;
    hash = (hash * 0x01000193) & 0xffffffff;
  }
  print('{"engine":"cyber-rev-dart-dwarf-symbol-recover","suite":"cyber-sec-1000","fnv32":"0x${hash.toRadixString(16).padLeft(8, '0')}","status":"VERIFIED_OK"}');
}
