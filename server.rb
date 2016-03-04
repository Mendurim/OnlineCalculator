require "sinatra"
require "sinatra/reloader"

get "/add" do
	erb :add
end

post "/add_elements" do
	redirect "/add_result/#{params[:first_num]}/#{params[:second_num]}"
end

get "/add_result/:first_num/:second_num" do
	@first_num = params[:first_num].to_f
	@second_num = params[:second_num].to_f
	@sum = @first_num + @second_num
	erb :add_result
end
