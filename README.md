# badoop

Todo list in bash. No buckets, no priorities, no features, just awesomeness.


## Installation

Download badoop and put it in your $PATH. You could try this:

```bash
curl -o /usr/local/bin https://raw.github.com/jergason/badoop/master/badoop
```

If you have [npm](http://npmjs.org) installed, you can install badoop like this:

```bash
npm install -g badoop
```

## Usage

Use it like so:


```bash
$ badoop Put badoop up on GitHub
$ badoop Finish blog post about badoop
$ badoop
  • put badoop up on GitHub
  • badoop Finish blog post about badoop
$ badoop -d GitHub
$ badoop
  • badoop Finish blog post about badoop
```

badoop can do four things.

1. `badoop` with no arguments lists all todo items.
1. `badoop` followed by anything but a `-d` or `-h` will add that as a todo
    item to your todo list.
1. `badoop -d` deletes any todo items matching the arguments passed in next
1. `badoop -h` prints out a help message.

It doesn't do anything with priorities or sorting or nesting or tagging or
logging or anything. If you are wondering if it has a certain feature, the
answer is no. Frankly, if your todo list is that complicated, you may have too
many things to do. You should use a different todo app, or do less things.

### Where The List is Stored

By default, badoop looks for a `$TODO` environment variable defining a path
to a text file to use as the todo list. If it doesn't exist, it will use
`~/.todo.txt` as the todo list.

### Cloud Storage Woop Woop

[Things 2](http://culturedcode.com/things/) just got cloud storage. Pffffft.
badoop has had this forever.

```bash
$ TODO=~/Dropbox/todo.txt
$ badoop Tell everyone about my sweet cloud storage.
$ badoop
  • Tell everyone about my sweet cloud storage.
```

Consider it clouded.

## Windows

The `badoop.bat` file will run in Windows. Add the file to your PATH, and it
will work as described above. You can configure a TODO environment variable
as usual.

Currently, it sometimes prints out the error "The system cannot find the drive
specified" when you delete an item. The deletion will succeed even if you get
this error.

## Contributing

Run the tests with `./test`. Make sure you have [roundup](https://github.com/bmizerany/roundup/)
to run them. If you add new features, add new tests for them please.

## TODOS

* `npm test` doesn't like roundup. The tests never exit.
* Fix the "system cannot find the drive" error in the Windows version.
