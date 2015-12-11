
class Apa
    # require "../ListaEnlazada/ListaEnlazada"
    # require "../ListaEnlazada/bibliografia"
    # require "../ListaEnlazada/book"
    # require "../ListaEnlazada/magazine"
    # require "../ListaEnlazada/node"
    # require "../ListaEnlazada/libroelec"
    include Comparable
    attr_accessor :atributo
    
    def initialize ()
        @atributo = List.new(nil)
    end
    
    def to_s
        @atributo.sort
        cadena = ""
        
        aux = @atributo.inicio

        while(aux != nil)
            cadena << "Título: " << mostrar_titulo(aux.value.titulo) << "\n"
            cadena << "\t Autor(es): " << mostrar_autor(aux.value.autor) << "(" << iniciales(aux.value.autor) << ")" << "\n"
             
            # puts iniciales(aux.value.autor)
            
            aux = aux.next
        end
        cadena
    end
    
    def mostrar_autor(vector)
        i=0
        cad = ""
        autors = vector
        
        while i < autors.count
            values = autors[i].split(" ")
            if i != autors.count - 1
                cad << values[1].to_s << " " << values[0].to_s
                cad << " & "
            else
                cad << values[1].to_s << " " << values[0].to_s
            end
            i = i + 1
        end
        cad
    end
    
    def iniciales(vector)
        i=0
        cad = ""
        autors = vector
        
        while i < autors.count
            values = autors[i].split(" ")
            cad = values[1].split("")[0] << "." << values[0].split("")[0] << "."
            i+=1
        end
        cad
    end

    def mostrar_titulo(vector)
        i=0
        titulos = vector
            cad=""
            values = titulos.split(" ")
            while i < values.count
                
                values[i] = values[i].capitalize
                cad << values[i].to_s << " "
                i = i + 1
            end
            cad
    end
    
end

# aa = Apa.new()

#     @libro1 = Libro.new(['Richard Silverman', 'Pepe Gómez'], "Git Pocket Guide", "" ,"O’Reilly Media", "1 edition", (Time.local(2013,8,2).strftime("%A, %d/%m/%Y")), ['ISBN-10: 1449325866', 'ISBN-13: 978-1449325862'])
    
#   #Revistas
#     @revista1 = Revista.new(['Pepe Gómez'], 'marca', '12', (Time.local(2015,7,7).strftime("%A, %d/%m/%Y")), ['123123123'] )
  
#   #Ebooks
#     @ebook1 = Ebook.new(['Fernando Cortés'], 'El charco bajo el agua', '12',(Time.local(2013,7,7).strftime("%A, %d/%m/%Y")),['ISBN-13: 978-1937785499'], 'http://www.ebookgratis.com')
    
#   #Nodos
#     @nodo1 = Node.new(nil, @revista1, nil)
#     @nodo2 = Node.new(nil, @libro1, nil)
#     @nodo3 = Node.new(nil, @ebook1, nil)
    
#     aa.atributo.insert(@nodo1)
#     aa.atributo.insert(@nodo2)
#     aa.atributo.insert(@nodo3)
    
#     puts aa.to_s