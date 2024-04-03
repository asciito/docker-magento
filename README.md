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

Finally, you need to configure you installation by running the following command.

```shell
bin/magento setup:install \
    --base-url=http://localhost \
    --db-host=db \
    --db-name=<db_name>\
    --db-user=<db_user> \
    --db-password=<db_password> \
    --admin-firstname=admin \
    --admin-lastname=admin \
    --admin-email=admin@admin.com \
    --admin-user=admin \
    --admin-password=password123 \
    --language=en_US \
    --currency=USD \
    --timezone=America/Chicago \
    --use-rewrites=1 \
    --search-engine=opensearch \
    --opensearch-host=search \
    --opensearch-port=9200 \
    --opensearch-index-prefix=magento2 \
    --opensearch-timeout=15
```

You only need to replace the values with your values in your `.env` file, like the `<db_name>`, etc.

That's all, you can now go to `http://localhost:8080` and start working with **Magento**

> **Note**
>
> Before going to your **admin** area, run the command `bin/magento module:disable Magento_AdminAdobeImsTwoFactorAuth Magento_TwoFactorAuth`, and
> now you'll be able to access to your **admin** area.

## Contributing

*working*...
