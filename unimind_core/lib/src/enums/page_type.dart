enum PageType { CREATE, UPDATE, DETAIL }

extension PageTypeExtension on PageType? {
  bool get isCreateOrUpdate =>
      this == PageType.CREATE || this == PageType.UPDATE;

  bool get isDetail => this == PageType.DETAIL;

  bool get isUpdate => this == PageType.UPDATE;

  bool get isCreate => this == PageType.CREATE;
}
