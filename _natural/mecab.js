var mecab = require('mecab-ya');
var text = '아버지가방에들어가신다';

const getNounsByText = (text) => {
  mecab.nouns(text, function (err, result) {
    console.log(result);
    return result;
    /*
        [ '아버지', '방' ]
    */
  });
}

(async () => {
  console.log("test", await getNounsByText(text));
})

mecab.pos(text, function (err, result) {
  console.log(result);
  /*
      [ [ '아버지', 'NNG' ],
        [ '가', 'JKS' ],
        [ '방', 'NNG' ],
        [ '에', 'JKB' ],
        [ '들어가', 'VV' ],
        [ '신다', 'EP+EC' ] ]
  */
});

mecab.morphs(text, function (err, result) {
  console.log(result);
  /*
      [ '아버지', '가', '방', '에', '들어가', '신다' ]
  */
});

mecab.nouns(text, function (err, result) {
  console.log(result);
  /*
      [ '아버지', '방' ]
  */
});
