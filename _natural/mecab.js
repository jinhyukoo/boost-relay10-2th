const mecab = require('mecab-ya');
const text = '아버지가방에들어가신다';

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

const { id, gender, age, info, start_date, end_date, place, group_name, story } = req.body;
const [err, result] = await mecab.nouns([id, gender, age, info, start_date, end_date, place, group_name, story].join(" "));
console.log(err, result)