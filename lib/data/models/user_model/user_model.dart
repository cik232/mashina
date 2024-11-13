class UserModel{
  final String id;
  final String login;
  final String password;
  final String first;
  final String last;
  final String patronymic;
  final String birth;
  final String jshr;
  final String issue_date;
  final String expiration_data;
  final String issued_by;
  final String pasport_id;

  UserModel(
      this.id,
      this.login,
      this.password,
      this.first,
      this.last,
      this.patronymic,
      this.birth,
      this.jshr,
      this.issue_date,
      this.expiration_data,
      this.issued_by,
      this.pasport_id);
}