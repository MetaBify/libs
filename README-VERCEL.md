# Vercel Key-Gated Script Endpoint

This repo includes a tiny Vercel function at `/api/script`.

Set these Vercel environment variables:

- `SCRIPT_KEY`: the key required by the endpoint.
- `SCRIPT_BODY`: plain Lua source to return.
- `SCRIPT_BODY_BASE64`: optional base64 Lua source. If set, this is used instead of `SCRIPT_BODY`.

Loader example:

```lua
loadstring(game:HttpGet("https://your-domain.vercel.app/api/script?key=YOUR_KEY"))()
```

Notes:

- Do not commit private scripts into a public GitHub repo.
- A key inside a client loader can be copied by anyone who has that loader.
- Rotate `SCRIPT_KEY` when you need to revoke access.
