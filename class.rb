# puts 'Estudo sobre Classes'
# puts '=' * 50

# a = Array.new + [12345]
# b = String.new + 'Larari'
# c = Time.new

# puts 'a = ' + a.to_s
# puts 'b = ' + b.to_s
# puts 'c = ' + c.to_s


# puts c
# puts a
# puts b

# puts '=' * 50
# puts ''
# puts ''
# puts ''

# post '/calc' do

	puts 'Digite o ano do seu nascimento:'
	ano = gets.chomp
	puts 'Agora digite o mês:'
	mes = gets.chomp
	puts 'Agora o dia:'
	dia = gets.chomp
	puts 'A hora:'
	hora = gets.chomp
	puts 'Os minutos:'
	minutos = gets.chomp
	puts 'Os segundos:'
	segundos = ggets.chomp

	nascimento = Time.mktime(ano, mes, dia, hora, minutos, segundos)
	puts nascimento
	hoje = Time.new
	diferenca = hoje.to_i - nascimento.to_i

		if diferenca < 1000000000
			puts 'Voce ainda não fez 1 bilhão de segundos de vida'
			diado1bilhao = hoje + (1000000000 - diferenca)
			puts 'Você só fará 1 bilhão de segundos em: ' + diado1bilhao.to_s
		else
			diaquefez1bi = Time.new - (diferenca - 1000000000)
			puts 'Voce fez 1 bilhão de segundos no dia ' + diaquefez1bi.to_s
		end


	idadeemanos = (((diferenca / 60 ) / 60) / 24) / 365 
	puts 'Parabéns, você tem ' + idadeemanos.to_s + ' anos!'
	idadeemnum = 1
	while idadeemnum <= idadeemanos
		puts 'Merce um puxão de orelha pelo seu aniversário de número: ' + idadeemnum.to_s
		idadeemnum += 1
	end
# end