class DashboardController < ApplicationController
	def index
	end

	def tempo
				@hoje = Time.new


		dia = params[:dia]
		mes = params[:mes]
		ano = params[:ano]
		@data = params[:data]

		@personal = Time.mktime(ano,mes,dia,@hoje.hour,@hoje.min,@hoje.sec)
		@diferencapersonal = @personal - @hoje
		diassegundos = @personal - @hoje
		@dias = @diferencapersonal.to_i / 60 / 60 / 24

		if @dias >= 1
			puts "Exibir #{@diferencapersonal}"
			puts "Faltam #{@dias + 1} dias para o que você quer saber!#{@data + @hoje.to_s}" 
		else
			puts "É Amanhã o que você quer saber!!!!!!"
		end	

	end
	

	def posted
		ano = params[:ano]
		mes = params[:mes]
		dia = params[:dia]
		hora = params[:hora]
		minutos = params[:minutos]
		segundos = params[:segundos]

		nascimento = Time.mktime(ano, mes, dia, hora, minutos, segundos)
		hoje = Time.new
		@idade = hoje.to_i - nascimento.to_i

		if @idade < 1000000000
			@diado1bilhao = hoje + (1000000000 - @idade)
		else
			@diado1bilhao = Time.new - (@idade - 1000000000)
		end 
	end
end
