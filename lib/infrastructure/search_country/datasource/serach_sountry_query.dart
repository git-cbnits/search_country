class SearchCountryQuery{

  String getAllListQuery() {
    return  '''{
          countries {
    code
    currency
    emoji
    emojiU
    languages {
      code
      name
      native
      rtl
    }
    name
    native
    phone
  }
  }
          ''';
  }

}