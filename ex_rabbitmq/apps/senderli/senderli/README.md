# Senderli

[Tutorial](https://www.rabbitmq.com/tutorials/tutorial-one-elixir.html)
[Github](https://github.com/rabbitmq/rabbitmq-tutorials/tree/master/elixir)

**AMQP**
[docs](https://hexdocs.pm/amqp/readme.html)

## Versions
elixir         1.9.1
erlang         21.1
postgres       9.4.7

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `senderli` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:senderli, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/senderli](https://hexdocs.pm/senderli).

## First steps
1. Run the docker images.
2. The images uses the user: "rabbitmq", passord: "rabbitmq"

Start you iex
`iex --sname senderli -S mix`

Open a new connection (Don't forget to set the password and user name)
```
iex(senderli@tobi-viu)1> {:ok, connection} = AMQP.Connection.open(username: "rabbitmq", password: "rabbitmq")
{:ok, %AMQP.Connection{pid: #PID<0.246.0>}}
```

## Learnings
### Can't compile dependency ranch_proxy_protocol
Error:
```
** (Mix) Could not compile dependency :ranch_proxy_protocol, "/home/workmate/.asdf/installs/elixir/1.9.1/.mix/rebar3 bare compile --paths="/home/workmate/viu/dev/sandbox/rabbitmq_elixir/senderli/senderli/_build/dev/lib/*/ebin"" command failed. You can recompile this dependency with "mix deps.compile ranch_proxy_protocol", update it with "mix deps.update ranch_proxy_protocol" or clean it with "mix deps.clean ranch_proxy_protocol"
```

Reason:
They are using `{:amqp, "~> 1.0"}` in the tutorial but you should use the newest version `{:amqp, "~> 1.3.2"}`.