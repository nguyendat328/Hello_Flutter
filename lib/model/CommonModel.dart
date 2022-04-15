class ServiceResponse<T>{
   int? code;
   String? message;
   T? data;
   ServiceResponse(this.code, this.message, this.data);
}