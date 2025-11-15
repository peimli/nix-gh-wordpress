### Welcome

Make sure you create the `S3` bucket to store the state.

Please adjust the below command to fit your need.

``` bash
aws s3api create-bucket   --bucket bucketname  --region eu-north-1   --create-bucket-configuration LocationConstraint=eu-north-1
```

To grab a list of available instances for a region you can use the following command.

``` bash
 aws lightsail get-bundles --region eu-north-1
```

You can grab the public IP from the output and connect via browser to `http://<public_ip>`.

Or you can use the ssh client via browser.

Grab the password.

``` bash
$ cat /home/bitnami/bitnami_application_password
oLN0R5w0/aS6
```

To connect to the wordpress admin web interface use the following url `http://<public_ip>/admin` then use the user `user` and the password `oLN0R5w0/aS6` that you previously retrieved.
