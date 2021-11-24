var body = $response.body;
body.replace('adv', 'abc');
$done({ body });
