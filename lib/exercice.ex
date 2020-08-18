defmodule DNA do
  @doc """
  transcrit une liste qui représente l'ADN en liste qui représente l'ARN

  ## Exemple

  iex> DNA.to_rna('ACTG')
  'UGAC'
  iex> DNA.to_rna('ACTGjjj')
  'UGAC_ _ _'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna), do: to_rna(dna, [])

  def to_rna([?G | dna], rna), do: to_rna(dna, [?C | rna])
  def to_rna([?C | dna], rna), do: to_rna(dna, [?G | rna])
  def to_rna([?T | dna], rna), do: to_rna(dna, [?A | rna])
  def to_rna([?A | dna], rna), do: to_rna(dna, [?U | rna])
  def to_rna([_ | dna], rna), do: to_rna(dna, [?_ | rna])
  def to_rna([], rna), do: Enum.reverse(rna)
end
