# MockInput

Sample code used in article: [Mocking Elixir IO.gets with
Agents](http://redgreenrepeat.com/2017/10/06/mocking-elixir-io-gets-with-agents/)

How to use Elixir Agent to produce different output from the same `IO.gets()`
call.

# Installation

If one wishes to follow along, the current system setup:

- Elixir 1.5
- Erlang version 20

These are the latest at the time of writing.

A repository of all this is available
[here](https://github.com/a-leung/mock_input/)

To follow in a Vagrant box, install
[vagrant](https://www.vagrantup.com/downloads.html)

```terminal
$ git clone https://github.com/a-leung/mock_input.git
$ cd mock_input
$ vagrant up
$ cd /vagrant/
$ mix test
```

# Contact

If there any questions, please [contact me
directly](http://redgreenrepeat.com/contact/)
