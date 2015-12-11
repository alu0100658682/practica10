class Revista < Biblio
    
    attr_reader :numero_ISSN
    
    def initialize(aut, titulo, serie, publicacion, issn)
  
		@autor = Array.new(aut)
		@titulo = titulo.capitalize
		@serie = serie
		@fecha_publicacion = publicacion
		@numero_ISSN = Array.new(issn)
    
    end
    
    
    def to_s 
        
        if self.instance_of?Revista
            # "#{@autor}, #{@titulo}, #{@serie}, #{@fecha_publicacion}, #{@numero_ISSN}"
            "Nombre del (los) Autor(es): #{@autor}; Fecha de publicacion: #{@fecha_publicacion}; Titulo: #{@titulo}; Issn: #{@numero_ISSN}; Publicacion: #{@serie}."

        end
    end
    
    
        
            
    
    
end