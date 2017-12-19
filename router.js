var Koa = require('koa');
var Router = require('koa-router');

var app = new Koa();
var router = new Router();

router.get('/', (ctx, next) => {
    ctx.body = "hello koa! page1";
});

router.get('/page2', (ctx, next) => {
    ctx.body = "hello koa! page2";
});

module.exports = router;