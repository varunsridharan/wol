# Wake On Lan & Shutdown Script
![https://cdn.svarun.dev/gh/varunsridharan/wol/banner.png](https://cdn.svarun.dev/gh/varunsridharan/wol/banner.png)
Script To Wake & Shutdown Remote System Using WOL (WakeOnLAN) and SSH for shutdown.

## 📥  Installation
Make sure to clone this repository to `/automation-scripts/` folder in your linux instance. 

if you clone it in some other location make sure to update the location in each `*.sh` files

```cmd
git clone https://github.com/varunsridharan/wol /automation-scripts/
```


## 🚀 Usage

### Sending Test Email Via CLI
The below cmd can be used to send email via mailgun using cli 
#### Arguments
1. Email Subject
2. Email Content / Message

```shell
bash /automation-scripts/email-notifiy.sh  "Hello World" "Some Message Value"
```

---

### Power On
The below cmd can be used to power on remote system 

#### Arguments
1. Remote System IP -- ___Used To Check if system is turned on___
2. Remote System MAC Address -- ___Used To Send WOL Magic Packet___
3. Remote System Name  -- ___Used In Email Notification___

```shell
bash /automation-scripts/power-on.sh "10.0.3.2" "38:D5:47:B2:BB:36" "Proxmox Backup Server"
```

---

### Power Off

#### Arguments
1. Remote System IP  -- ___Used To Check if system is turned off___
2. Remote System Username -- User with root ACCESS / permision to send shutdown signal
3. Remote System Password
4. Remote System MAC Address -- ___Used In Email Notification___
5. Remote System Name -- ___Used In Email Notification___

```shell
bash /automation-scripts/power-off.sh "10.0.3.2" "root" "root-password" "38:D5:47:B2:BB:36" "Proxmox Backup Server"
```


<!-- START common-footer.mustache -->
## 📝 Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

[Checkout CHANGELOG.md](https://github.com/varunsridharan/wol/blob/main/CHANGELOG.md)


## 🤝 Contributing
If you would like to help, please take a look at the list of [issues](https://github.com/varunsridharan/wol/issues/).


## 📜  License & Conduct
- [**MIT License**](https://github.com/varunsridharan/wol/blob/main/LICENSE) © [Varun Sridharan](website)
- [Code of Conduct](https://github.com/varunsridharan/.github/blob/main/CODE_OF_CONDUCT.md)


## 📣 Feedback
- ⭐ This repository if this project helped you! :wink:
- Create An [🔧 Issue](https://github.com/varunsridharan/wol/issues/) if you need help / found a bug


## 💰 Sponsor
[I][twitter] fell in love with open-source in 2013 and there has been no looking back since! You can read more about me [here][website].
If you, or your company, use any of my projects or like what I’m doing, kindly consider backing me. I'm in this for the long run.

- ☕ How about we get to know each other over coffee? Buy me a cup for just [**$9.99**][buymeacoffee]
- ☕️☕️ How about buying me just 2 cups of coffee each month? You can do that for as little as [**$9.99**][buymeacoffee]
- 🔰         We love bettering open-source projects. Support 1-hour of open-source maintenance for [**$24.99 one-time?**][paypal]
- 🚀         Love open-source tools? Me too! How about supporting one hour of open-source development for just [**$49.99 one-time ?**][paypal]

<!-- Personl Links -->
[paypal]: https://sva.onl/paypal
[buymeacoffee]: https://sva.onl/buymeacoffee
[twitter]: https://sva.onl/twitter/
[website]: https://sva.onl/website/


## Connect & Say 👋
- **Follow** me on [👨‍💻 Github][github] and stay updated on free and open-source software
- **Follow** me on [🐦 Twitter][twitter] to get updates on my latest open source projects
- **Message** me on [📠 Telegram][telegram]
- **Follow** my pet on [Instagram][sofythelabrador] for some _dog-tastic_ updates!

<!-- Personl Links -->
[sofythelabrador]: https://www.instagram.com/sofythelabrador/
[github]: https://sva.onl/github/
[twitter]: https://sva.onl/twitter/
[telegram]: https://sva.onl/telegram/


---

<p align="center">
<i>Built With ♥ By <a href="https://sva.onl/twitter"  target="_blank" rel="noopener noreferrer">Varun Sridharan</a> <a href="https://en.wikipedia.org/wiki/India">
   <img src="https://cdn.svarun.dev/flag-india.jpg" width="20px"/></a> </i> <br/><br/>
   <img src="https://cdn.svarun.dev/codeispoetry.png"/>
</p>

---


<!-- END common-footer.mustache -->
