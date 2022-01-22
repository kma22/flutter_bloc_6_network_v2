abstract class UserEvent {}

class UserLoadEvent extends UserEvent {}

class UserClearEvent extends UserEvent {}

class UserSearchEvent extends UserEvent {
  String text;

  UserSearchEvent({this.text});
}
