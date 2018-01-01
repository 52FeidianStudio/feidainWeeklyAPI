const mysql = require('mysql');
const config = require('../config.json');

const pool = mysql.createPool({
    host: config.db_host,           // 数据库地址
    port: config.db_port,           // 数据库地址
    user: config.db_user,           // 数据库用户
    password: config.db_password,   // 数据库密码
    database: config.db_name        // 选中数据库
})

let query = function (sql, values) {
    return new Promise((resolve, reject) => {
        pool.getConnection(function (err, connection) {
            if (err) {
                reject(err)
            } else {
                connection.query(sql, values, (err, rows) => {

                    if (err) {
                        reject(err)
                    } else {
                        resolve(rows)
                    }
                    connection.release()
                })
            }
        })
    })
}

module.exports = query;