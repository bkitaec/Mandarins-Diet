function deleteFromModel(id, url){

}

function successNotify(text){
  new PNotify({
    title: 'Ура',
    text: text,
    type: 'success',
    styling: 'bootstrap3'
  });
};

function getTrVal(elem, cl) {
  return elem.find(cl).text();
};
