# Iac

* terrafornでawsリソースを管理する
* 初めにtfstate管理用のS3バケットを`init_terraform_bucket.sh`を用いて作成する
  * tfstate管理用のS3はterraformで管理しない方がよいため

```bash=
$ bash ./init_terraform_bucket.sh test-frontendapp-cd-tfstate
```
