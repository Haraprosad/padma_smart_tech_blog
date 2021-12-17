/* To get information about different state of data this class will be
* helpful */
class DataStatus<T>{
  T data;
  DataState dataState;
  DataStatus(this.data,this.dataState);
}

enum DataState {INIT, LOADING, LOADED, FAILED, NO_INTERNET}