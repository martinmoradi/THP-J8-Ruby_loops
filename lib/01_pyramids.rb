def pyramid_height
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    height=gets.to_i
    while !height.odd?
        puts "Non, choisis un nombre impair !"
        height=gets.to_i
    end    
    return height
end

def pyramid_wtf(pyramid_height)
    height = pyramid_height
    (1..height).each do |row|
        if row < height.to_f / 2
            row_string = "#" * (2 * row - 1)                  
        elsif row > height.to_f / 2           
            row_string = "#" * ( (pyramid_height - row) * 2 - 1 )         
        else
             row_string = "#" * height
        end
        puts row_string.center(height) 
    end
end



pyramid_wtf(pyramid_height)



=begin 
height = pyramid_height
width = pyramid_height 

def full_pyramid(height)
    (1..height).each do |row|
    puts " " * ( height - row ) + "#" * (2 * row - 1)
    end 
end

1) Demander le nombre d'étages
2) Vérifier que le nombre est impair (while !odd?)
3) Width = Height ? 
=end