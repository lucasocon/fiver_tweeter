defmodule FileReaderTest do
  use ExUnit.Case
  import FiverTweeter.FileReader
  import Mock

  doctest FiverTweeter.FileReader
  test "Passing a file should return a string" do
    str = get_string_to_tweet(Path.join("#{:code.priv_dir(:fiver_tweeter)}", "sample.txt"))

    assert str != nil
  end

  test "Will not return a string longer than 140 characters" do
    str = get_string_to_tweet(Path.join("#{:code.priv_dir(:fiver_tweeter)}", "/test/too_long.txt"))

    assert str == "short line"
  end

  test "An empty string should return an empty string" do
    with_mock(File, [read!: fn(_) -> "" end]) do
      str = pick_string("")
      assert str == ""
    end
  end

  test "The string should be trimed" do
    with_mock File, [read!: fn(_) -> " ABC " end] do
      str = get_string_to_tweet("doesn't exist.txt")

      assert str == "ABC"
    end
  end
end
