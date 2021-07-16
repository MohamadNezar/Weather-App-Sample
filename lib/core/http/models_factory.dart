
class ModelsFactory {
  // Singleton handling.
  static  ModelsFactory _instance =ModelsFactory();

  static ModelsFactory get getInstance =>_instance;


  // Mapping each model name with the actual value using fromJson factory method.
  Map<String, dynamic Function(Map<String, dynamic>)> _modelsMap = {};

  // Register the model in the map.
  void registerModel(
    String modelName,
    dynamic Function(Map<String, dynamic>) modelCreator,
  ) {
    print('in register $modelName');
    _modelsMap.putIfAbsent(modelName, () => modelCreator);
  }

  // Generate the desired T model.
  T createModel<T>(json) {
      final modelName = T.toString();
      print('T value : $T');
      print(
          'in create model : ${T.toString()} , ${_modelsMap.containsKey(modelName)}');
      assert(_modelsMap.containsKey(modelName));
      final model = _modelsMap[modelName]!(json) as T;
      return model;
  }
}
