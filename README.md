![GitHub forks](https://img.shields.io/github/forks/GuilhermeSCLima/Discord-Log-Webhooks?style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/GuilhermeSCLima/Discord-Log-Webhooks?logo=github&style=for-the-badge)
![GitHub repo size](https://img.shields.io/github/repo-size/GuilhermeSCLima/Discord-Log-Webhooks?logo=github&style=for-the-badge)
![GitHub all releases](https://img.shields.io/github/downloads/GuilhermeSCLima/Discord-Log-Webhooks/total?logo=github&style=for-the-badge)
![Lua](https://img.shields.io/badge/Lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)

# Discord Log Webhooks

**Discord Log Webhooks** is a standalone FiveM script written in Lua that allows server owners to create complete, standardized and centralized webhook logs for their servers.

Instead of manually configuring multiple Discord webhooks across different resources, you can use a single, reusable logging system to send structured messages and embeds to Discord.

## Features

- Centralized webhook configuration
- Support for multiple named webhooks
- Custom colors and server identity
- Discord embed support
- Reusable function for server-side and client-side events
- VS Code snippets for faster development
- Lightweight and easy to integrate

## Installation

1. Download the latest release from the [Releases](https://github.com/GuilhermeSCLima/Discord-Log-Webhooks/releases) page.
2. Extract the folder into your FiveM server's `resources` directory.
3. Add the following line to your `server.cfg`:

```cfg
ensure webhooks
```

## Configuration

Open `config/core.lua` and configure the following:

### Webhooks

Define your Discord webhooks using a descriptive name:

```lua
Webhooks = {
    ["logs"] = "[https://discord.com/api/webhooks/your-webhook-url](https://discord.com/api/webhooks/your-webhook-url)",
    ["payments"] = "[https://discord.com/api/webhooks/your-webhook-url](https://discord.com/api/webhooks/your-webhook-url)"
}
```

### Colors

Define custom colors using decimal color values:

```lua
Colors = {
    ["red"] = 15548997,
    ["green"] = 5763719,
    ["blue"] = 3447003
}
```

### Server identity

Set the name and icon that will appear in the webhook messages:

```lua
serverName = "Your FiveM Server"
serverIcon = "[https://your-server-icon-url.png](https://your-server-icon-url.png)"
```

## Usage

Use `TriggerEvent` in server-side scripts:

```lua
TriggerEvent("sendWebhooks", "logs", {
    content = "Discord message content",
    embeds = {
        {
            title = "Player connected",
            description = "A new player has joined the server.",
            color = exports["webhooks"]:color("green"),
            footer = {
                text = "FiveM Server © " .. os.date("*t")["year"]
            }
        }
    }
})
```

Use `TriggerServerEvent` in client-side scripts:

```lua
TriggerServerEvent("sendWebhooks", "logs", {
    content = "Discord message content"
})
```

## VS Code Snippets

Optional VS Code snippets are available in `snippets/vscode.json`.

To use them:

1. Open VS Code.
2. Go to **File > Preferences > Configure User Snippets**.
3. Create or open a Lua snippets file.
4. Copy the contents of `snippets/vscode.json`.

For more details, see the official VS Code documentation:  
[Create your own snippets](https://code.visualstudio.com/docs/editor/userdefinedsnippets)

## Contributing

Contributions are welcome.

1. Fork the project
2. Create your feature branch: `git checkout -b feature/AmazingFeature`
3. Commit your changes: `git commit -m "Add AmazingFeature"`
4. Push to the branch: `git push origin feature/AmazingFeature`
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Author

- **João Guilherme Lima** — [GitHub](https://github.com/GuilhermeSCLima)

## Contact

- Email: [contato@guilhermelima.dev](mailto:contato@guilhermelima.dev)
- Project: [Discord Log Webhooks](https://github.com/GuilhermeSCLima/Discord-Log-Webhooks)

## References

- [Discord Embed documentation](https://discord.com/developers/docs/resources/channel#embed-object)
- [Hexadecimal to decimal color conversion](https://www.checkyourmath.com/convert/color/hexadecimal_decimal.php)
