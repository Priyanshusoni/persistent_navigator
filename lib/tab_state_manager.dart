abstract class TabState {
  void onTabChanged(int tabIndex);
}

class TabStateManager {
  final TabState tabState;
  TabStateManager(this.tabState);
  void onTabChanged(int tabIndex) {
    tabState.onTabChanged(tabIndex);
  }
}
