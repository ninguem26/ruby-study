def sign_up(name, email, password, *opt)
    address = if opt[0] then opt[0] else "" end
    age = if opt[1] then opt[1] else "" end

    puts "Name: #{name}\nE-Mail: #{email}\nPassword: #{password}\nAddress: #{address}\nAge: #{age}"
end

sign_up("Júlio", "julio.cesar@stant.com.br", "senha123")