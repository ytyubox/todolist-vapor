# Vapor Clean

This is a template for Vapor 3 users that does the absolute minimum to set up a working Vapor 3 environment.

Unlike the official templates that are currently available, this template does not include vast swathes of extra example code that you will always need to delete. Instead, it adds just a single “hello” route so you can be sure everything is working correctly.

Although this repository contains a LICENSE file, this is meant for you to replace with whatever license you intend to use – please consider what little code is in this repository as public domain, and yours to do with as you please.

It’s my hope that the official Vapor project will add a template similar to this one at some point in the future, but until then please use this however you want.

## Try it out

If you have already installed the Vapor toolbox, you can create a new Vapor project from this repo using the following command:

    vapor new MyProject --template=twostraws/vapor-clean

## how to run by Xcode 11.4 with SPM
![](https://user-images.githubusercontent.com/1342803/59302875-f82ea180-8c62-11e9-983b-3c00888789a0.png)


## docker with PostgresSQL

```
docker run --name todolist -e POSTGRES_DB=todoList \
  -e POSTGRES_USER=todoList -e POSTGRES_PASSWORD=password \
  -p 5432:5432 -d postgres
```
