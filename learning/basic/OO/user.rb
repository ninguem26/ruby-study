class User
    def initialize(name, age, country)
      @name = name
      @age = age
      @country = country
    end

    def to_s()
        "User: #{@name} (#{@age}) - #{@country}"
    end
end