abstract class UseCase<T, P> {
  // یه تایپ برمیگردونه و یه پارام دریافت میکنه
  Future<T> call(P param);
}
