# FiverTweeter

FiverTweeter app that consume Twitter API.
Built with Elixir :)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `fiver_tweeter` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:fiver_tweeter, "~> 0.1.0"}]
    end
    ```

  2. Ensure `fiver_tweeter` is started before your application:

    ```elixir
    def application do
      [applications: [:fiver_tweeter]]
    end
    ```

TODO:
  Using Twitter API.
    - Search specific keywords, perform actions
    - Favorite tweets
    - Reply
    - Schedule from CLI  
    - Activate/Deactivate
