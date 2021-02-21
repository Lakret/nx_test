defmodule NxTest do
  import Nx.Defn

  @default_defn_compiler EXLA
  # @default_defn_compiler {EXLA, run_options: [keep_on_device: true]}

  # {time, t_beam} = :timer.tc(NxTest, :test_tensor_beam, [])
  # 59840
  def test_tensor_beam() do
    for _ <- 1..100 do
      for _ <- 1..100 do
        List.duplicate(1, 100)
      end
    end
  end

  @doc """
  ```
  import NxTest
  t3 = test_tensor()
  {time, t} = :timer.tc(NxTest, :test_tensor, [])
  {time, res} = :timer.tc(NxTest, :direct_sum, [t])
  {time, res} = :timer.tc(NxTest, :reduce_sum, [t])

  :timer.tc(fn -> reduce_sum(t3) end)
  ```
  """
  def test_tensor() do
    Nx.broadcast(1.5, {100, 100, 100})
  end

  defn direct_sum(t) do
    Nx.sum(t)
  end

  defn reduce_sum(t) do
    Nx.reduce(t, 0, fn x, y -> x + y end)
  end

  defn softmax(t) do
    inspect_expr(Nx.exp(t) / Nx.sum(Nx.exp(t)))
  end

  defn grad_softmax(t) do
    grad(t, Nx.sum(Nx.exp(t) / Nx.sum(Nx.exp(t))))
  end
end
