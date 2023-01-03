import '../_controller_import.dart';

mixin UserControllerMixin {
  Rx<List<User>> userListX = Rx<List<User>>([]);
  Rx<FetchState> fetchStateX = FetchState.NOT_STARTED.obs;
  RxString filterTextX = ''.obs;
  Rx<List<User>> filteredListX = Rx<List<User>>([]);

  void setFilterText(String value) {
    filterTextX.value = value;
  }

  void runFilter() {
    filteredListX.value =
        userListX.value.filterByFilterText(text: filterTextX.value);
  }

  void setList(List<User> list) {
    userListX.value = list;
  }

  void addOrUpdate({required User user}) {
    var newUserList = List<User>.from(userListX.value);
    int userIndex =
        newUserList.indexWhere((element) => element.userId == user.userId);

    if (userIndex == -1) {
      newUserList.add(user);
    } else {
      newUserList[userIndex] = user;
    }

    userListX.value = newUserList;
  }

  void delete({required User user}) {
    var newUserList = List<User>.from(userListX.value);
    newUserList.removeWhere((element) => element.userId == user.userId);
    userListX.value = newUserList;
  }
}
