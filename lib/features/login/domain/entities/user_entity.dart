class UserEntity{
  static userNameValidation(String username){
    if(username.isEmpty){
      return 'please enter username';
    }
    return ;
  }
  static passwordValidation(String password){
    if(password.isEmpty){
      return 'please enter password';
    }
    return ;
  }
}