def abc(code,number)
if code>0
  #from Z to A
  if number>122
    tempnumber=number - 122
    newnumber=96+tempnumber
    number=newnumber
  elsif (number>90) 
    tempnumber=number-90
    newnumber=64+tempnumber
    number=newnumber
  else
    number=number
  end
  else
    #A to Z
    if number<65
    tempnumber=65-number
    newnumber=91-tempnumber
    number=newnumber
    elsif number<97
    tempnumber=97-number
    newnumber=123-tempnumber
    number=newnumber
  else
    number=number
  end
end
end
p"Enter the text"
input=gets.chomp
p"Enter the code"
code=gets.chomp
code=code.to_i
text=[]
text=input.scan(/./)
text.map!{|c|c.ord}
text.map!{|c|c+code}
text.map!{|c|abc(code,c)}
text.map!{|c|c.chr}
p text.join(" ")

