<div align="center">
<h1>Docker Magento</h1>

<p><strong>Docker Magento</strong> is a really simple way to install and manage Magento with Docker, even on Windows!</p>

<h2>⚠️ DO NOT USE ON PRODUCTION ⚠️</h2>
</div>

## Installation

Create a copy of `.env.example`, and rename it to `.env`, and fill all the fields with the values you want.

> Note:
>
> The password for Opensearch should be at least 18 characters, and use letters (a-zA-Z), and numbers. I recommend to use [Lasstpass Generator](https://www.lastpass.com/features/password-generator?length=18&encryption-style=all-characters&uppercase=on&lowercase=on&numbers=on&symbols=on) to generate a password that fullfil the expectations.

Now run the command `bin/magento` from your terminal, and you should see a prompt asking for an `username`, and `password`. This values are your `keys` from **Adobe Commerce**

Once the process has been finished, you should see the files from magento in `www` folder.

Finally, just run the last command. This command will automatically use your values defined in `.env`.

```shell
bin/setup
```

That's all, you can now go to `http://localhost:8080` and start working with **Magento**

> **Note**
>
> Before going to your **admin** area, run the command `bin/magento module:disable Magento_AdminAdobeImsTwoFactorAuth Magento_TwoFactorAuth`, and
> now you'll be able to access to your **admin** area.

## Contributing

*working*...
