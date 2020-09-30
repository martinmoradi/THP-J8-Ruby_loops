puts "Nombre d'étages de la pyramide ?"
g=gets.to_i


(1..g).each do |k|
 puts " " * (g-k) + "*" * (2*k-1)
end 