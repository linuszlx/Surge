var body = $response.body;
var obj = JSON.parse(body);
obj.data.findTabSwitch= false;
obj.data.findTabAccess.youPinTab= false;
$done({body: JSON.stringify(obj)});
