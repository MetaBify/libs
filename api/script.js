module.exports = function handler(req, res) {
  const expectedKey = process.env.SCRIPT_KEY;
  const providedKey = req.query.key || req.headers["x-script-key"];

  res.setHeader("Cache-Control", "no-store");
  res.setHeader("Content-Type", "text/plain; charset=utf-8");

  if (!expectedKey) {
    res.status(500).send("-- SCRIPT_KEY is not configured on the server");
    return;
  }

  if (!providedKey || providedKey !== expectedKey) {
    res.status(403).send("-- invalid or missing key");
    return;
  }

  const encodedBody = process.env.SCRIPT_BODY_BASE64;
  const plainBody = process.env.SCRIPT_BODY;

  if (encodedBody) {
    res.status(200).send(Buffer.from(encodedBody, "base64").toString("utf8"));
    return;
  }

  if (plainBody) {
    res.status(200).send(plainBody);
    return;
  }

  res.status(500).send("-- SCRIPT_BODY or SCRIPT_BODY_BASE64 is not configured on the server");
};
