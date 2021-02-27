# begin   # try
#     file = File.open('./ola')
#     if file
#         puts file.read
#     end

# rescue  Exception => e # except
#     puts e.message
#     puts e.backtrace
# end


def soma(n1, n2)
    n1 + n2
rescue Exception => e
    puts 'Erro ao somar'
end

soma('2', 10.0)