class Queue
  attr_reader :results
  def initialized
    @results = []
  end

  def load(results)
    @results << results
  end
end
