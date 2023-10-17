mixin Crud {
  index(String coll, String doc, String? options) {}

  store(String coll, Object data, String? options) {}

  update(String coll, String docId, Object data, String? options) {}

  delete(String coll, String docId, String? options) {}
}
