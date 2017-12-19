module.exports = {
    apps: [{
        name: "feidianweekly-api",
        script: "./app.js",
        watch: true,
        env: {
            "NODE_ENV": "development",
        }
    }]
}