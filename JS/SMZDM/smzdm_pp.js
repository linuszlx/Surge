var body = $response.body;
var obj = JSON.parse(body);
obj.data.big_banner= [ ];
$done({body: JSON.stringify(obj)});
