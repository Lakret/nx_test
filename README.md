# NxTest

```bash
brew install bazelisk
```

Then we specified correct version of Bazel with `.bazelversion`.

## Amazon

https://docs.aws.amazon.com/dlami/latest/devguide/tutorial-base.html

```
=============================================================================
       __|  __|_  )
       _|  (     /   Deep Learning Base AMI (Ubuntu 18.04) Version 34.0
      ___|\___|___|
=============================================================================

Welcome to Ubuntu 18.04.5 LTS (GNU/Linux 5.4.0-1037-aws x86_64v)

Nvidia driver version: 450.80.02
CUDA versions available: cuda-10.0 cuda-10.1 cuda-10.2 cuda-11.0 cuda-11.1
Default CUDA version is 10.0
Libraries: cuDNN, NCCL, Intel MKL-DNN

AWS Deep Learning AMI Homepage: https://aws.amazon.com/machine-learning/amis/
Developer Guide and Release Notes: https://docs.aws.amazon.com/dlami/latest/devguide/what-is-dlami.html
Support: https://forums.aws.amazon.com/forum.jspa?forumID=263
For a fully managed experience, check out Amazon SageMaker at https://aws.amazon.com/sagemaker
When using INF1 type instances, please update regularly using the instructions at: https://github.com/aws/aws-neuron-sdk/tree/master/release-notes
=============================================================================
```

## Warning

```
warning: :httpc.request/4 defined in application :inets is used by the current application but the current application does not directly depend on :inets. To fix this, you must do one of:

  1. If :inets is part of Erlang/Elixir, you must include it under :extra_applications inside "def application" in your mix.exs

  2. If :inets is a dependency, make sure it is listed under "def deps" in your mix.exs

  3. In case you don't want to add a requirement to :inets, you may optionally skip this warning by adding [xref: [exclude: :httpc] to your "def project" in mix.exs

  lib/mnist.ex:74: MNIST.unzip_cache_or_download/1

warning: :inets.start/0 defined in application :inets is used by the current application but the current application does not directly depend on :inets. To fix this, you must do one of:

  1. If :inets is part of Erlang/Elixir, you must include it under :extra_applications inside "def application" in your mix.exs

  2. If :inets is a dependency, make sure it is listed under "def deps" in your mix.exs

  3. In case you don't want to add a requirement to :inets, you may optionally skip this warning by adding [xref: [exclude: :inets] to your "def project" in mix.exs

  lib/mnist.ex:71: MNIST.unzip_cache_or_download/1

warning: :ssl.start/0 defined in application :ssl is used by the current application but the current application does not directly depend on :ssl. To fix this, you must do one of:

  1. If :ssl is part of Erlang/Elixir, you must include it under :extra_applications inside "def application" in your mix.exs

  2. If :ssl is a dependency, make sure it is listed under "def deps" in your mix.exs

  3. In case you don't want to add a requirement to :ssl, you may optionally skip this warning by adding [xref: [exclude: :ssl] to your "def project" in mix.exs

  lib/mnist.ex:72: MNIST.unzip_cache_or_download/1
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `nx_test` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:nx_test, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/nx_test](https://hexdocs.pm/nx_test).
