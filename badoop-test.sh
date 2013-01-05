#! /usr/bin/env roundup

describe 'badoop: todo list management in bash'

badoop='./badoop'

set_up_test_file() {
  TODO=./test_todo.txt
  export TODO
}

tear_down_test_file() {
  rm "$TODO"
  if [[ -f "$TODO-e" ]]; then
    # sometimes sed creates these weird files
    rm "$TODO-e"
  fi
  unset TODO
}

it_prints_usage() {
  $badoop -h | grep -- '-h'
}

it_doesnt_error_if_file_doesnt_exist() {
  set_up_test_file
  $badoop
}

it_prints_out_contents_of_todos_when_no_args_give() {
  set_up_test_file
  echo "HURP DURP" >> "$TODO"
  $badoop | grep 'HURP DURP'
  tear_down_test_file
}

it_deletes_todos_matching_word_arguments() {
  set_up_test_file
  echo "SOME STUFF" >> "$TODO"
  $badoop -d SOME
  res="$($badoop)"
  test "$res" = ""
  tear_down_test_file
}

it_deletes_todo_matching_integer_argument(){
  set_up_test_file
  echo "FIRST TODO ENTRY" >> "$TODO"
  echo "SECOND TODO ENTRY" >> "$TODO"
  $badoop -d 2
  $badoop -d 1
  res="$($badoop)"
  test "$res" = ""
  tear_down_test_file
}