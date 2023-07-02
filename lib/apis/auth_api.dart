import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as model;
import 'package:dumangas_twitter_clone/core/core.dart';
import 'package:dumangas_twitter_clone/core/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

//Appwrite account -> handles services / retrieves data
//Models user -> accessed data


final authAPIProvider = Provider((ref) {

  final account = ref.watch(appwriteAccountProvider);
  return AuthAPI(account: account);
});

abstract class IAuthAPI{

  FutureEither<model.User> signUp(
    {
      required String email,
      required String password,
    }
  );

   FutureEither<model.Session> login(
    {
      required String email,
      required String password,
    }
  );

}

class AuthAPI implements IAuthAPI{
  final Account _account;

  //Named constructor cannot have this
  AuthAPI({required Account account}): _account = account;


  @override
  FutureEither<model.User> signUp({
    required String email, 
    required String password
    }) async {
      try{
        final account = await _account.create(
          userId: ID.unique(), 
          email: email, 
          password: password);

          return right(account);

      } on AppwriteException catch (e, stackTrace){
        return left(Failure(e.message??'Some unexpected error occured', stackTrace));
      }
      catch (e, stackTrace) {

          return left(Failure(e.toString(), stackTrace));
      }
  }
  
  @override
  FutureEither<model.Session> login({required String email, required String password}) 
  async {
   
   try{
        final session = await _account.createEmailSession(
          
          email: email, 
          password: password);

          return right(session);

      } on AppwriteException catch (e, stackTrace){
        return left(Failure(e.message??'Some unexpected error occured', stackTrace));
      }
      catch (e, stackTrace) {

          return left(Failure(e.toString(), stackTrace));
      }
  }
}

