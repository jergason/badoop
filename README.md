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
$ badoop Make brownies
$ badoop
     1	put badoop up on GitHub
     2  Finish blog post about badoop
     3  Make brownies
$ badoop -d GitHub
$ badoop
  	 1	Finish blog post about badoop
  	 2  Make brownies
$ badoop -d 1
$ badoop
  	 1	Make brownies.
```

badoop can do four things.

1. `badoop` with no arguments lists all todo items.
1. `badoop` followed by anything but a `-d` or `-h` will add that as a todo
    item to your todo list.
1. `badoop -d` Deletes todo items based on the provided argument.  If the argument is a phrase then  all todo items containing the phrase will be deleted.  If the argument is an integer then only the todo item  matching the integer will be deleted.
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

## Contributing

Run the tests with `./test`. Make sure you have [roundup](https://github.com/bmizerany/roundup/)
to run them. If you add new features, add new tests for them please.

## TODOS

* `npm test` doesn't like roundup. The tests never exit.
