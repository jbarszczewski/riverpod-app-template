/// A simple placehjolder that can be used to search for hardcoded strings.
/// This is used to find strings that should be localized.
extension StringHardcoded on String {
  String get hardcoded => 'HARDCODED: $this';
}
