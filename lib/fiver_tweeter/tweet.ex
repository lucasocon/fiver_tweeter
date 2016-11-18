defmodule FiverTweeter.Tweet do
  def send(str) do
    ExTwitter.configure(:process, [consumer_key: Application.get_env(:fiver_tweeter, :twitter_api_key), consumer_secret: Application.get_env(:fiver_tweeter, :twitter_api_secret), access_token: Application.get_env(:fiver_tweeter, :twitter_access_token), access_token_secret: Application.get_env(:fiver_tweeter, :twitter_access_token_secret)])
    ExTwitter.update(str)
  end

  def send_random(file) do
    FiverTweeter.FileReader.get_string_to_tweet(file)
    |> send
  end
end
