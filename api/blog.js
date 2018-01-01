const query = require('../lib/async_db.js')

let blog = {};

// 请求api
blog.api = {};

// 私有方法
blog._private = {};

// 获取最近的博客
blog.api.getBlogs = async (ctx, next) => {

    let sql = 'select * from blog';
    let dataList = await query(sql)
    
    console.log(dataList)
    ctx.body = {
        data: dataList
    };
}

// 获取博客详情页
blog.api.getDetail = () => {

}






module.exports = blog;