// requires node.js
// npm install --save rserve-client
//
//
//to run 
// node test-rserve.js
var r = require('rserve-client');


r.connect('169.229.140.218', 6311, function(err, client) {
    client.evaluate('test_rserve("foo")', function(err, ans) {
        console.log(ans);
        client.end();
    });
});




