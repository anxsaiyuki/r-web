require "mechanize"
require "nokogiri"

#url = ARGV[0]
fp = File.new("Packlist.txt", "w")
agent = Mechanize.new { |agent| agent.user_agent_alias = "Mac Safari" }

#packlist = [1,7,12,13,15,20,22,23,25,31,34,38,42,45,48,55]
packlist = [1]
1.times do |x|
url = "http://vg.xpg.jp/list/list.fcgi?Set=" + packlist[x].to_s
html = agent.get(url).body

html_doc = Nokogiri::HTML(html)
arr = Array.new
arr = [" product_name: ", " card_number: ", " C: ", " D: ", " E: ", " F: ", " G: ", " H: ", " I: ", " J: ", " K: ", " description: "]
counter = 0
counter_desc = 1
count = 0

fp.write("Pack" + (x + 1).to_s + "\n\n")

list = html_doc.xpath("//table[@class='jHover3 c2 f9 nw sr']/tr/td")
listdesc = html_doc.xpath("//table[@class='jHover3 c2 f9 nw sr']/tr/td[@class='l w w1']")
=begin
list.each { |i| 
	
	if counter_desc == 12
		if i.text == listdesc[count].text
			fp.write(arr[counter] + i.text + "\n") 
			counter_desc = 1
			count = count + 1
			counter = 0
			if listdesc[count].nil?
				count = count - 1
			else

			end
		else
			fp.write(arr[counter] + "-\n" + arr[0] + i.text) 
			counter_desc = 2
			counter = 1
		end
	else
		fp.write(arr[counter] + i.text) 
		counter_desc = counter_desc + 1
		counter = counter + 1
	end

}
end 
=end

list.each { |i| 
	
	if counter_desc == 12
		if i.text == listdesc[count].text
			fp.write(arr[counter] + '"' + i.text + '"' + ", pack_number: 1, quantity: 1, price: 500, category: " + '"vanguard"' + ")\n") 
			counter_desc = 1
			count = count + 1
			counter = 0
			if listdesc[count].nil?
				count = count - 1
			else

			end
		else
			fp.write(arr[counter] + '"-"' + ", pack_number = 1, quantity: 1, price: 500, category: " + '"vanguard"'+ ")\nProduct.create(" + arr[0] + '"' + i.text + '"') 
			counter_desc = 2
			counter = 1
		end
	else
		if counter_desc == 1
			fp.write("Product.create(" + arr[counter] + '"' + i.text + '",') 
		elsif counter_desc == 2
			fp.write(arr[counter] + '"' + i.text + '"' + ",") 
		end
		counter_desc = counter_desc + 1
		counter = counter + 1
	end

}
end 
