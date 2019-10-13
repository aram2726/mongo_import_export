# Mongo import export

* install mongodb

[install mongodb ubuntu example](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)

#### usage

* import

move mongoimport.sh to directory where *.bson files are located

```bash
$ sh mongoimport.sh
```

* export

```bash
$ sh mongoexport.sh db_name out_dir
```
