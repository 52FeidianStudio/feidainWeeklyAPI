var Koa = require('koa');
var Router = require('koa-router');

var app = new Koa();
var router = new Router();

const blog = require('./api/blog');

router.get('/', (ctx, next) => {
    // ctx.redirect('http://localhost:8000')
    ctx.body = "hello koa! page1";
});

router.get('/blogs', blog.api.getBlogs);

router.get('/weeklys', (ctx, next) => {
    console.log(ctx.query)
    ctx.body = 'test';
});

module.exports = router;