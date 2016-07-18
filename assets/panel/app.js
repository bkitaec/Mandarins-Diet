var myApp = angular.module('myApp', ['ng-admin']);
myApp.config(['NgAdminConfigurationProvider',
  'RestangularProvider',
  function(nga, RestangularProvider) {
    // create an admin application
    var baseUrl = ('http://localhost:1309/');
    var admin = nga.application('С我И Admin panel')
      .baseApiUrl(baseUrl); // main API endpoint

    RestangularProvider.addFullRequestInterceptor(function(element, operation, what, url, headers, params, httpConfig) {
      if (operation == 'getList') {
        params.skip = (params._page - 1) * params._perPage;
        params.limit = params._perPage;
        params.sort = params._sortField + ' ' + params._sortDir;
        delete params._sortField;
        delete params._sortDir;
        delete params._page;
        delete params._perPage;
      }
      return { params: params };
    });


    var langs = [
      { value: 'ru', label: 'Русский' },
      { value: 'en', label: 'English' },
      { value: 'cn', label: '中国' },
    ],
      published = [
        {value: 1, label: "True"},
        {value: 0, label: "False"}
      ];



    /*
    ========= LESSONS CATEGORY =========
    */
    var lessonscategory = nga.entity('lessonscategory');

    lessonscategory.listView().fields([
      nga.field('id'),
      nga.field('name').isDetailLink(true),
      nga.field('lang', 'choice').choices(langs),
      nga.field('order'),
    ]).listActions(['<ma-filtered-list-button entity-name="lessons" filter="{ category_id: entry.values.id }" size="xs" label="Related lessons"></ma-filtered-list-button>', 'edit', 'delete']);
    ;
    lessonscategory.creationView().fields([
      nga.field('name').validation({ required: true, minlength: 3, maxlength: 100 }),
      nga.field('lang', 'choice').choices(langs).validation({ required: true}),
      nga.field('order', 'number').validation({ required: true }),
      nga.field('', 'template')
        .label('')
        .editable(false)
        .template('<span class="pull-right"><ma-filtered-list-button entity-name="lessons" filter="{ category_id: entry.values.id }" size="sm"></ma-filtered-list-button></span>')
    ]);
    lessonscategory.editionView().fields(lessonscategory.creationView().fields());
    admin.addEntity(lessonscategory)

    /*
     ========= LESSONS =========
     */
    var lessons = nga.entity('lessons');
    lessons.listView().fields([
      nga.field('id'),
      nga.field('title').isDetailLink(true),
      nga.field('category_id', 'reference')
        .targetEntity(lessonscategory)
        .targetField(nga.field('name'))
        .label('Category'),
    ])
      .filters([
      nga.field('q', 'template')
        .label('')
        .pinned(true)
        .template('<div class="input-group"><input type="text" ng-model="value" placeholder="Search" class="form-control"></input><span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span></div>'),
      nga.field('category_id', 'reference')
        .label('Category')
        .targetEntity(lessonscategory)
        .targetField(nga.field('name'))
        ])

      .listActions(['edit', 'delete']);

    lessons.creationView().fields([
      nga.field('title'),
      nga.field('category_id', 'reference')
        .targetEntity(lessonscategory)
        .targetField(nga.field('name'))
        .label('Category'),
      nga.field('contents', 'embedded_list') // Define a 1-N relationship with the (embedded) comment entity
          .targetFields([ // which comment fields to display in the datagrid / form
            nga.field('content', 'wysiwyg'),
            nga.field('audio', 'file').uploadInformation({ 'url': baseUrl + 'audio/upload', 'apifilename': 'path' })
          ]),

    ]);

    lessons.editionView().fields(lessons.creationView().fields());
    admin.addEntity(lessons);

    /*
     ========= QUIZ CATEGORY =========
    */
    var quizcategory = nga.entity('quizcategory');
    quizcategory.listView().fields([
      nga.field('id'),
      nga.field('name').isDetailLink(true),
      nga.field('desc').map(function truncate(value) {
        if (!value) return '';
        return value.length > 50 ? value.substr(0, 50) + '...' : value;
      }),
    ]).listActions(['<ma-filtered-list-button entity-name="quiz" filter="{ category_id: entry.values.id }" size="xs" label="Related lessons"></ma-filtered-list-button>', 'edit', 'delete']);
    ;
    quizcategory.creationView().fields([
      nga.field('name').validation({ required: true, minlength: 3, maxlength: 100 }),
      nga.field('desc'),
      nga.field('published', 'choice').choices(published),
      nga.field('', 'template')
        .label('')
        .editable(false)
        .template('<span class="pull-right"><ma-filtered-list-button entity-name="quiz" filter="{ category_id: entry.values.id }" size="sm"></ma-filtered-list-button></span>')
    ]);
    quizcategory.editionView().fields(quizcategory.creationView().fields());
    admin.addEntity(quizcategory);

   /*
     ========= QUIZ TAG =========
    */
    var quiztag = nga.entity('quiztag');
    quiztag.listView().fields([
      nga.field('id'),
      nga.field('name').isDetailLink(true),
    ]).listActions(['<ma-filtered-list-button entity-name="quizquestion" filter="{ tag_id: entry.values.id }" size="xs" label="Related questions"></ma-filtered-list-button>', 'edit', 'delete']);
    ;
    quiztag.creationView().fields([
      nga.field('name').validation({ required: true, minlength: 3, maxlength: 100 }),
      nga.field('published', 'choice').choices(published),
      nga.field('', 'template')
        .label('')
        .editable(false)
        .template('<span class="pull-right"><ma-filtered-list-button entity-name="quizquestion" filter="{ tag_id: entry.values.id }" size="sm"></ma-filtered-list-button></span>')
    ]);
    quiztag.editionView().fields(quiztag.creationView().fields());
    admin.addEntity(quiztag)
   /*
     ========= QUIZ TAG =========
    */
    var quizquestionstags = nga.entity('quizquestionstags');
    admin.addEntity(quizquestionstags)

    /*
     ========= QUIZ Questions =========
     */
   var quizquestion = nga.entity('quizquestion');
    quizquestion.listView().fields([
      nga.field('id'),
      nga.field('question').isDetailLink(true),
      nga.field('tags_arr', 'reference_many') // a Reference is a particular type of field that references another entity
        .targetEntity(quiztag) // the tag entity is defined later in this file
        .targetField(nga.field('name')) // the field to be displayed in this list
        .cssClasses('hidden-xs')
    ]).listActions(['edit', 'delete']);

    quizquestion.creationView().fields([
      nga.field('question'),
      nga.field('published', 'choice').choices(published),
      nga.field('tags_arr', 'reference_many')
          .targetEntity(nga.entity('quiztag'))
        .targetField(nga.field('name'))
        .attributes({ placeholder: 'Select some tags...' })
        .remoteComplete(true, {
            refreshDelay: 300
        }),
      nga.field('answers', 'embedded_list') // Define a 1-N relationship with the (embedded) comment entity
        .targetFields([ // which comment fields to display in the datagrid / form
          nga.field('answer'),
          nga.field('correct', 'choice').choices(published).defaultValue(0)
        ]),
      nga.field('', 'template')
        .label('')
        .editable(false)
        .template('<span class="pull-right"><ma-filtered-list-button entity-name="quizanswer" filter="{ question_id: entry.values.id }" size="sm"></ma-filtered-list-button></span>')
    ]);
    quizquestion.editionView().fields(quizquestion.creationView().fields());
    admin.addEntity(quizquestion)

    /*
     ========= QUIZ =========
     */
    var quiz = nga.entity('quiz');
    quiz.listView().fields([
      nga.field('id'),
      nga.field('title').isDetailLink(true),
      nga.field('desc').map(function truncate(value) {
        if (!value) return '';
        return value.length > 50 ? value.substr(0, 50) + '...' : value;
      }),
      nga.field('category_id', 'reference')
        .targetEntity(quizcategory)
        .targetField(nga.field('name'))
        .label('Category'),
      nga.field('questions').map(function truncate(values) {
        if (!values) return 0;
        return values.length;
      }),
    ]).listActions(['edit', 'delete']);

    quiz.creationView().fields([
      nga.field('title'),
      nga.field('questions_arr', 'reference_many')
        .targetEntity(quizquestion)
        .targetField(nga.field('question'))
        .attributes({ placeholder: 'Select some tags...' })
        .remoteComplete(true, {
          refreshDelay: 300
        }),
      nga.field('category_id', 'reference')
        .targetEntity(quizcategory)
        .targetField(nga.field('name'))
        .label('Category'),
      nga.field('desc'),
      nga.field('order', 'number'),
      nga.field('published', 'choice').choices(published),
      nga.field('', 'template')
        .label('')
        .editable(false)
        .template('<span class="pull-right"><ma-filtered-list-button entity-name="quizquestion" filter="{ category_id: entry.values.id }" size="sm"></ma-filtered-list-button></span>')
    ]);
    quiz.editionView().fields(quiz.creationView().fields());
    admin.addEntity(quiz)


    /*
     ========= ADMIN Panel =========
     */

    admin.menu(nga.menu()
      .addChild(nga.menu()
        .title('Lessons')
        .icon('<span class="fa fa-th-list fa-fw"></span>')
        .addChild(nga.menu(admin.getEntity('lessons')) // nga.menu(entity) sets defaults title, link and active values correctly
          .icon('<span class="glyphicon glyphicon-pencil"></span>').title('List'))
        .addChild(nga.menu(admin.getEntity('lessonscategory'))
          .icon('<span class="fa fa-tags fa-fw"></span>').title('Category'))
      )
      .addChild(nga.menu()
        .title('Quizes')
        .icon('<span class="fa fa-th-list fa-fw"></span>')
        .addChild(nga.menu(admin.getEntity('quiz')) // nga.menu(entity) sets defaults title, link and active values correctly
          .icon('<span class="glyphicon glyphicon-pencil"></span>').title('List'))
        .addChild(nga.menu(admin.getEntity('quizcategory'))
          .icon('<span class="fa fa-tags fa-fw"></span>').title('Category'))
        .addChild(nga.menu(admin.getEntity('quiztag'))
          .icon('<span class="fa fa-tags fa-fw"></span>').title('Tag'))
        .addChild(nga.menu(admin.getEntity('quizquestion'))
          .icon('<span class="fa fa-tags fa-fw"></span>').title('Questions'))
      )
    );


    nga.configure(admin);
  }]);
