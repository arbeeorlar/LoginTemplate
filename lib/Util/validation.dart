import 'dart:async';

mixin Validation{

var  emailValidator  =  StreamTransformer<String,String>.fromHandlers(
   handleData: (email,sink){
      if(email.contains("@")){
         sink.add(email);
      }else{
        sink.add("Invalid email");
      }
   }
);


var  passwordValidator  =  StreamTransformer<String,String>.fromHandlers(
   handleData: (password,sink){
      if(password.length > 6 ){
         sink.add(password);
      }else{
        sink.add("Invalid Password");
      }
   }
);


}