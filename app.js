const express = require('express');
const app = express();
const path = require('path')
// const sqlite3 = require('sqlite3').verbose();
var cookieParser = require('cookie-parser');

const apiRouter = require('./routes/index');

const port = 80;

const getPath = (file) => {
  return path.join(__dirname + file);
}

app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(express.static('public'));
app.use(cookieParser());

app.use('/api', apiRouter)

app.post('/cookie', (req, res) => {
  res.json({ login: (req.cookies.token ? true : false) });
})

app.get('/', (req, res) => {
  res.sendFile(getPath('/views/home.html'));
})

app.get('/login', (req, res) => {
  if (req.cookies.token) {
    return res.redirect('/');
  }
  res.sendFile(getPath('/views/signin.html'))
})

app.get('/posts', (req, res) => {
  res.sendFile(getPath('/views/search_post.html'));
})

app.get('/posts/write', (req, res) => {
  res.sendFile(getPath('/views/create_post.html'));
})



app.listen(port, () => {
  console.log("start server");
});