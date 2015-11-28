var http = require('http'),
    httpProxy = require('http-proxy');

var proxy = httpProxy.createProxyServer({});

proxy.on('proxyRes', function(proxyRes, req, res) {
    proxyRes.headers['Access-Control-Allow-Origin'] = '*';
	console.log('RAW Response from the target', JSON.stringify(proxyRes.headers, true, 2));
});

var server = http.createServer(function(req, res) {
	proxy.web(req, res, { target: 'http://127.0.0.1:5555' });
});


console.log("listening on port 5566")
server.listen(5566);