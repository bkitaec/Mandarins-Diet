var app = angular.module('myApp', ['ng-admin']);
app.config([
  'NgAdminConfigurationProvider',
  'Application',
  'Entity',
  'Field',
  'Reference',
  'ReferencedList',
  'ReferenceMany',
  'RestangularProvider',
  function(
    NgAdminConfigurationProvider,
    Application,
    Entity,
    Field,
    Reference,
    ReferencedList,
    ReferenceMany,
    RestangularProvider
  ) {
    // set the main API endpoint for this admin
    var app = new Application("Admin")
      .baseApiUrl("http://localhost:1337");

//            // set the list of fields to map in each post view
//            book.dashboardView().addField(new Field('title').isDetailLink(true)) //.map(truncate),
////                new ReferenceMany('tags') // a Reference is a particular type of field that references another entity
////                        .targetEntity(tag) // the tag entity is defined later in this file
////                        .targetField(new Field('name')) // the field to be displayed in this list
////            ]);


    /**
     * Intercept response from the REST service, to turn nested objects their primary keys.
     * Currently hard-codes 'id' as primary key.
     */
    RestangularProvider.addResponseInterceptor(function(response) {
      // Only act on true object, not arrays
      if ( ! angular.isArray(response) ) {
        // Cycle through each property of the object
        for (var key in response) {
          var primaryKey = 'id';
          // If the property is an array of objects, map if to an array of the primary keys of each object
          if (angular.isArray(response[key])) {
            response[key] = response[key].map(function (keyItem) {
              return keyItem[primaryKey] || keyItem;
            });
            // If it's an object, map it to its primary key
          } else if (response[key] && 'object' === typeof response[key]) {
            response[key] = response[key][primaryKey] || response[key];
          }
        }
      }
      return response;
    });

    /**
     * Create a Sails-ified ListView for the given entity, i.e. with Sails-y sorting and pagination parameters,
     * and parsing of search-text into a 'where' query parameter, using the queryField(s) supplied.
     * @param entity.  ng-admin entity
     * @param queryFields string or array of strings which should be searched when querying.
     */
    function sailsListView(entity, queryFields) {
      var listView = entity.listView()
        // Sorting (ordering) parameters
        .sortParams(function (field, dir) {
          return {
            params: { sort: field + ' ' + String(dir).toLowerCase() },
            headers: {}
          };
        })
        // Pagination parameters
        .pagination(function (page, maxPerPage) {
          return {
            skip: (page - 1) * maxPerPage,
            limit: maxPerPage
          }
        });

      // 'Where' parameters for queries with 'contains'
      if ('undefined' !== typeof queryFields) {
        if ('string' === typeof queryFields) {
          queryFields = [queryFields];
        }
        listView.filterQuery(function (queryText) {
          return {
            where: JSON.stringify({
              or: queryFields.map(function (field) {
                var where = {};
                where[field] = {contains: queryText};
                return where;
              })
            })
          };
        });

      }

      return listView;
    }



    var __sailsModel_lessons =
      new Entity("lessons")
        .identifier(new Field("id"));

    app.addEntity(__sailsModel_lessons);



    var __sailsModel_lessonscategory =
      new Entity("lessonscategory")
        .identifier(new Field("id"));

    app.addEntity(__sailsModel_lessonscategory);





    sailsListView(__sailsModel_lessons, ["id","category_id","title","content","updatedAt","updatedAt"])

      .addField(new Field("id").type("number").isDetailLink(true))

      .addField(new Reference("category_id").targetEntity(__sailsModel_lessonscategory).targetField(new Field("id")).isDetailLink(true))

      .addField(new Field("title").type("string").isDetailLink(true))

      .addField(new Field("updatedAt").type("date").isDetailLink(true))

      .addField(new Field("updatedAt").type("date").isDetailLink(true))

    ;
    __sailsModel_lessons.
      creationView()

      .addField(new Reference("category_id").targetEntity(__sailsModel_lessonscategory).targetField(new Field("id")).isDetailLink(true))

      .addField(new Field("title").type("string").isDetailLink(true))

      .addField(new Field("content").type("text").isDetailLink(true))

    ;
    __sailsModel_lessons.
      editionView()

      .addField(new Reference("category_id").targetEntity(__sailsModel_lessonscategory).targetField(new Field("id")).isDetailLink(true))

      .addField(new Field("title").type("string").isDetailLink(true))

      .addField(new Field("content").type("text").isDetailLink(true))

    ;



    sailsListView(__sailsModel_lessonscategory, ["id","name","lang","order","lessons","updatedAt","updatedAt"])

      .addField(new Field("id").type("number").isDetailLink(true))

      .addField(new Field("name").type("string").isDetailLink(true))

      .addField(new Field("lang").type("string").isDetailLink(true))

      .addField(new Field("order").type("number").isDetailLink(true))

      .addField(new Field("updatedAt").type("date").isDetailLink(true))

      .addField(new Field("updatedAt").type("date").isDetailLink(true))

    ;
    __sailsModel_lessonscategory.
      creationView()

      .addField(new Field("name").type("string").isDetailLink(true))

      .addField(new Field("lang").type("string").isDetailLink(true))

      .addField(new Field("order").type("number").isDetailLink(true))

      .addField(new ReferenceMany("lessons").targetEntity(__sailsModel_lessons).targetField(new Field("id")).isDetailLink(true))

    ;
    __sailsModel_lessonscategory.
      editionView()

      .addField(new Field("name").type("string").isDetailLink(true))

      .addField(new Field("lang").type("string").isDetailLink(true))

      .addField(new Field("order").type("number").isDetailLink(true))

      .addField(new ReferenceMany("lessons").targetEntity(__sailsModel_lessons).targetField(new Field("id")).isDetailLink(true))

    ;


    NgAdminConfigurationProvider.configure(app);
  }]);
