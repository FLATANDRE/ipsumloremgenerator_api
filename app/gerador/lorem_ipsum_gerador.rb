class LoremIpsumGerador
    
    def self.generate (qtd_paragraph, qtd_phrases)
        paragraph = String.new
        phrases = String.new
        qtd_words = 12
        words = String.new

        qtd_paragraph.times {
            qtd_phrases.times {
                qtd_words.times {
                    words.concat LoremIpsumGerador.read_latim_word('db/latin_words.txt') + " "
                }
                phrases.concat words
                phrases += "\n"
                words = String.new
            }
            paragraph.concat phrases
            paragraph += "\n\n\n"
            phrases = String.new
        }
        paragraph
    end


    def self.read_latim_word (from_file)
        chosen_line = String.new
        File.foreach(from_file).each_with_index do |line, number|
            chosen_line = line if rand < 1.0/(number+1)
        end
        chosen_line
    end
end