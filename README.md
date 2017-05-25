# Cassandra Demonstration

## Learning Materials

 - [Introduction to Cassandra](https://www.youtube.com/watch?v=5qEoEAfAer8) (10m57s)
 - [Cassandra C++ Driver](https://academy.datastax.com/resources/getting-started-cpp-driver)

## Getting Started

### Ingredients

 - [Hashicorp Vagrant](https://www.vagrantup.com/downloads.html)
 - [Oracle Virtualbox](https://www.virtualbox.org/wiki/Downloads)
 - [Download cassandra 3.10.0](http://www.apache.org/dyn/closer.lua/cassandra/3.10/apache-cassandra-3.10-bin.tar.gz) (~35Mb)
 - Extract where ever you want but add the `bin/` folder to your PATH so you can use `cqlsh` tool
 - **Windows Specific** [Microsoft Visual C++ Compiler for Python 2.7](http://www.microsoft.com/en-us/download/details.aspx?id=44266) (~84Mb)
 
### Method

```bash
    vagrant up
    cqlsh 192.168.5.10
```

**Total Cooking time:** 5-10 minutes after downloading all ingredients and virtual box base image

## TODO
 
 - Get multinodes actually connected into cluster
 - Stratio Spatial Search Index 
  - https://www.youtube.com/watch?v=AONyjxVT9r4
  - https://github.com/Stratio/cassandra-lucene-index
 - Get C++ driver demo setup
