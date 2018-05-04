Store some Dockerfiles


If you are using WSL (Windows Subsystem for Linux), you must remove `/mnt` from `$PWD`.

```
echo $PWD
> /mnt/c/path/to

PWD=/c/path/to
```


If you meet an error like `/host_mnt/c/xxx`, maybe the cause is a symbolic link.
Please `cd` from the root (`/`) again and move to the directory.
