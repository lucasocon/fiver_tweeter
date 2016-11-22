defmodule FiverTweeter.Scheduler do
  def schedule_file(schedule, filepath) do
    Quantum.add_job(schedule, fn -> FiverTweeter.FileReader.get_string_to_tweet(filepath)
    |> FiverTweeter.TweetServer.tweet end)
  end
end
