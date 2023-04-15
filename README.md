![GitHub forks](https://img.shields.io/github/forks/Guilhermesclima/Discord-Log-Webhooks?style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/GuilhermeSCLima/Discord-Log-Webhooks?logo=github&style=for-the-badge)
![GitHub repo size](https://img.shields.io/github/repo-size/GuilhermeSCLima/Discord-Log-Webhooks?logo=github&style=for-the-badge)
![GitHub all releases](https://img.shields.io/github/downloads/GuilhermeSCLima/Discord-Log-Webhooks/total?logo=github&style=for-the-badge)
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](https://choosealicense.com/licenses/mit/)

# Discord Log Webhooks
Discord log webhook system is a standalone FiveM script writen in LUA that allows server owners to create complete webhooks logs for their servers

## Instalation
1. Download the zip file from the last release from the repository.
2. Unzip the file and place it in the resources folder of your FiveM server.
3. Add the following code to your server.cfg file: `ensure webhooks`.

## Configuration
1. Go to `config/core.lua` file.
2. On Webhooks list you may set `["WebhookName"] = "Webhook_link"`.
3. On Colors list you may set `["ColorName"] = DecimalColorNumber`.
4. On serverName variable you may set the name of your FiveM Server, or the name your webhook may appear when send a webhook.
5. On serverName variable you may set the icon image link of your FiveM Server, or the icon your webhook may appear when send a webhook.

## Usage | Example
For server-side scripts use `TriggerEvent`
For client-side scripts use `TriggerServerEvent`
```lua
TriggerEvent("sendWebhooks","preConfiguredName",{
  content = "Discord message content",
  embeds = {
    {
      title = nil,
      description = nil,
      url = nil,
      timestamp = os.date("!%Y%m%dT%H%M%S"), --ISO8601 timestamp
      color = exports["webhooks"]:color(""),
      footer = {
        text = "FiveM server name ©️ "..os.date("*t")["year"],
        icon_url = nil
      },
      image = {
        url = nil
      },
      thumbnail = {
        url = nil
      },
      fields = nil,
      author = {
        name = nil,
        url = nil,
        icon_url = nil
      },
    }
  }
})
```

## Useful
In case you see useful, you can add the snippets for this script, to your vscode snippets by following theis steps:
[Create your own snippets (VSCode)](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_create-your-own-snippets)
- the snippets for vscode are storage in `snippets/vscode.json`

## Contributing
If you have a suggestion that would make this better, please fork the repo and create a pull request. Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (git checkout -b feature/AmazingFeature)
3. Commit your Changes (git commit -m 'Add some AmazingFeature')
4. Push to the Branch (git push origin feature/AmazingFeature)
5. Open a Pull Request

## Programing Languages and Tools
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)

## License
Distributed under the MIT License. See LICENSE.txt for more information.

## Reference
 - [Convert Hexadecimal to Decimal - Color Conversions](https://www.checkyourmath.com/convert/color/hexadecimal_decimal.php)
 - [Discord Embed documentation](https://discord.com/developers/docs/resources/channel#embed-object)
 - [Guilherme Lima](https://github.com/GuilhermeSCLima)

## Authors

- [@Guilherme Lima](https://github.com/GuilhermeSCLima)

## Contact

Guilherme Lima - Guilherme Lima#1152 - contato@guilhermelima.dev

Project Link: https://github.com/GuilhermeSCLima/Discord-Log-Webhooks