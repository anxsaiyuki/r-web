class MyKeep
  def self.the_array
    @the_array = [123]# Execute the SQL query to populate the array here.
  end

  def self.add element
    if @the_array
      @the_array << element
    else
      @the_array = [element]
    end
  end
end