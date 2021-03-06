const Koa = require('koa');
const app = new Koa();

const router = require('./router');

const config = require('./config');



app.use(router.routes());
app.use(router.allowedMethods());

app.listen(config.app_port);
