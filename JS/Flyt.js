var body = $response.body;
var obj = JSON.parse(body);
obj = body.replaceall('adv', 'abc');
$done({body: JSON.stringify(obj)});
