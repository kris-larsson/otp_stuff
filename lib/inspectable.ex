defprotocol Inspectable do
  @fallback_to_any true
  def dump(element)
end

defimpl Inspectable, for: BitString do
  def dump(string) do
    "STRING: #{string}"
  end
end

defimpl Inspectable, for: Integer do
  def dump(0) do
    "ZERO!"
  end
  def dump(string) do
    "INTEGER: #{string}"
  end
end

defimpl Inspectable, for: Any do
  def dump(_) do
    "A random element"
  end
end
