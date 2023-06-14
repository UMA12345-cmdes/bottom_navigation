class HistoryPageRepository {
  String? _data;

  Future<void> fetchData() async {
    // simulate real data fetching
    await Future.delayed(const Duration(milliseconds: 600));
    // store dummy data
    _data = 'History Page';
  }

  String? get data => _data;
}
