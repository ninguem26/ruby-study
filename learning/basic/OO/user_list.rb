class UserList
    def initialize
        @users = Array.new
    end

    def append(user)
        @users.push(user)
        self
    end

    def deleteFirst
        @users.shift
    end

    def deleteLast
        @users.pop
    end

    def [](key)
        return @users[key] if key.kind_of?(Integer)
        return @users.find { |user| key == user.name }
    end

    def filter
        users_filter = []

        @users.each {|u| users_filter.push(u) if yield u}
        users_filter
    end
end