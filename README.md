## Setup - ec2

- SSH to your machine - `ssh ubuntu@<ec2-public-ip>`
- Clone this repo to your ec2 machine. - `git clone git@github.com:cautio-tech/redash.git`
- Follow the doc [Redash Setup](https://github.com/getredash/redash/wiki/Local-development-setup)
- Setup nginx, setup your certificates.
- Create a dns routing to the public dns of the ec2 machine.
- Setup your ses mail server and credentials.
- On the ec2 machine, edit the env file and add these creds.

```bash
REDASH_MAIL_SERVER=email-smtp.<aws-region>.amazonaws.com
REDASH_MAIL_PORT=587
REDASH_MAIL_USE_TLS=true
REDASH_MAIL_USERNAME=<AWS_SES_SMTP_USERNAME>
REDASH_MAIL_PASSWORD=<AWS_SES_SMTP_PASSWORD>
REDASH_MAIL_DEFAULT_SENDER="your-email@example.com"
REDASH_HOST="<your hosted url for redash>"
```

- Run `docker compose up -d --build && sudo systemctl restart nginx`