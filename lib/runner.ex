defmodule Runner do
  def run() do
    {train_images, train_labels} =
      MNIST.download('train-images-idx3-ubyte.gz', 'train-labels-idx1-ubyte.gz')

    IO.puts("Initializing parameters...\n")
    {time, params} = :timer.tc(MNIST, :init_random_params, [])
    # 3478, 1900, 1732
    IO.inspect(time)

    IO.puts("Training MNIST for 10 epochs...\n\n")

    training_set = Enum.take(train_images, 1900)
    training_set_labels = Enum.take(train_labels, 1900)

    {time, final_params} =
      :timer.tc(MNIST, :train, [training_set, training_set_labels, params, [epochs: 10]])

    # before jit: 2501355
    # after jit: 1199680, 1232635, 1467002

    IO.inspect(time)
    final_params
    # IO.inspect(Nx.backend_transfer(final_params))
  end

  def compute() do
    {train_images, train_labels} =
      MNIST.download('train-images-idx3-ubyte.gz', 'train-labels-idx1-ubyte.gz')

    {train_images, train_labels}
  end

  @doc """
  predictions = MNIST.predict(final_params, image) |> Nx.argmax(axis: 1) |> Nx.to_flat_list()
  """

  def show(final_parameters, train_images, train_labels) do
    image = Enum.at(train_images, 1999)
    labels = Enum.at(train_labels, 1999)

    for i <- 5..10 do
      label = labels[i] |> Nx.argmax() |> Nx.to_scalar()
      IO.puts("label: #{label}")
      image[i] |> Nx.reshape({28, 28}) |> Nx.to_heatmap()
    end
  end
end
