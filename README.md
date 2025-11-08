
# CasaOS Automation AppStore

A CasaOS custom Appstore containing application for automation, focusing on n8n

## 📃 Table of Contents

> ⚠ The information below is updated for **v0.4.4**.

- [Introduction](#-introduction)
- [Installation](#-installation)
- [List of Applications](#-list-of-applications)
- [Frequently Asked Questions / FAQs](#-frequently-asked-questions)
    - [How to Upgrade CasaOS](#-how-to-upgrade-casaos)
- [Contributing](#contributing)


## 🔥 Introduction

The **Automation AppStore** is a custom appstore built to work for [CasaOS](https://github.com/IceWhaleTech/CasaOS) or [ZimaOS](https://github.com/IceWhaleTech/ZimaOS).

This custom appstore for CasaOS contains some additional configurations of docker images.


### 💎 CasaOS Automation Appstore URL

```bash
https://github.com/TephlonDude/CasaOS-Automation-AppStore/archive/refs/tags/latest.zip
```


## ✅ Installation

- Go to your CasaOS dashboard.

  ![Step 1](./tip-1.jpg)

- Open the appstore and click `Add Source` button  located on the right just above the apps list.

  ![Step 2](./tip-2.jpg)

- Paste the appstore link
  ```bash
  https://github.com/TephlonDude/CasaOS-Automation-AppStore/archive/refs/tags/latest.zip
  ```
  and then click `Add` to submit.

  ![Step 3](./tip-3.jpg)

- Wait for the installation to finish. Done!

> **NOTE: Custom Appstore is only supported on CasaOS version [0.4.4](https://blog.casaos.io/blog/32.html) and above. How to upgrade? [Click here](#-how-to-upgrade-casaos)**


## 🛠 List of Applications

| # | Application  | Version | Description |
| :---: | :---: | --- | --- |
| 1 | <img src="https://raw.githubusercontent.com/n8n-io/n8n/master/assets/n8n-logo.png" width="32"/><br>[n8n](https://n8n.io/) | 1.119.0 | n8n (short for “nodemation”) is a powerful open-source automation platform that lets you connect apps and APIs together — no coding required. Build workflows that automate repetitive tasks, integrate services, and orchestrate data between systems.. |



## 💡 Frequently Asked Questions

### 👉 How to Upgrade CasaOS

Run the following command:

```bash
curl -fsSL https://get.casaos.io/update/v0.4.4 | sudo bash
```
