#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/../../../../config/environment'

include BSC

country = BSC::Country.find_by_name('Brazil')
country ||= BSC::Country.create(:name => 'Brazil') 

state = country.states.find_by_name('Rio Grande do Norte')
state ||= BSC::State.create!( :name => 'Rio Grande do Norte', :code => 'RN', :country => country); 

c = BSC::City.new(:name => 'Acari', :zip_code => '59.370-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Acu', :zip_code => '59.650-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Afonso Bezerra', :zip_code => '59.510-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Agua Nova', :zip_code => '59.995-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Alexandria', :zip_code => '59.965-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Almino Afonso', :zip_code => '59.760-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Alto Do Rodrigues', :zip_code => '59.507-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Angicos', :zip_code => '59.515-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Antonio Martins', :zip_code => '59.870-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Apodi', :zip_code => '59.700-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Areia Branca', :zip_code => '59.655-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Ares', :zip_code => '59.170-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Campo Grande', :zip_code => '59.680-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Baia Formosa', :zip_code => '59.194-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Barao De Serra Branca', :zip_code => '59.522-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Barauna', :zip_code => '59.695-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Barcelona', :zip_code => '59.410-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Belo Horizonte', :zip_code => '59.558-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Bento Fernandes', :zip_code => '59.555-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Bodo', :zip_code => '59.528-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Bom Jesus', :zip_code => '59.270-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Brejinho', :zip_code => '59.219-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Caicara Do Norte', :zip_code => '59.592-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Caicara Do Rio Do Vento', :zip_code => '59.540-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Caico', :zip_code => '59.300-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Campo Redondo', :zip_code => '59.230-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Canguaretama', :zip_code => '59.190-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Caraubas', :zip_code => '59.780-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Carnauba Dos Dantas', :zip_code => '59.374-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Carnaubais', :zip_code => '59.665-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Ceara-mirim', :zip_code => '59.570-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Cerro Cora', :zip_code => '59.395-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Coronel Ezequiel', :zip_code => '59.220-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Coronel Joao Pessoa', :zip_code => '59.930-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Corrego De Sao Mateus', :zip_code => '59.265-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Cruzeta', :zip_code => '59.375-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Currais Novos', :zip_code => '59.380-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Doutor Severiano', :zip_code => '59.910-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Parnamirim', :zip_code => '59.150-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Encanto', :zip_code => '59.905-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Equador', :zip_code => '59.355-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Espirito Santo', :zip_code => '59.180-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Extremoz', :zip_code => '59.575-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Felipe Guerra', :zip_code => '59.795-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Fernando Pedroza', :zip_code => '59.517-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Firmamento', :zip_code => '59.538-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Florania', :zip_code => '59.335-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Francisco Dantas', :zip_code => '59.902-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Frutuoso Gomes', :zip_code => '59.890-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Galinhos', :zip_code => '59.596-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Gameleira', :zip_code => '59.568-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Goianinha', :zip_code => '59.173-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Governador Dix-sept Rosado', :zip_code => '59.790-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Grossos', :zip_code => '59.675-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Guamare', :zip_code => '59.598-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Ielmo Marinho', :zip_code => '59.490-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Igreja Nova', :zip_code => '59.299-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Ipanguacu', :zip_code => '59.508-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Ipiranga', :zip_code => '59.275-500', :state => state  ); c.save!
c = BSC::City.new(:name => 'Ipueira', :zip_code => '59.315-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Itau', :zip_code => '59.855-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Jacana', :zip_code => '59.225-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Jandaira', :zip_code => '59.594-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Janduis', :zip_code => '59.690-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Boa Saude', :zip_code => '59.260-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Japi', :zip_code => '59.213-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Jardim De Angicos', :zip_code => '59.544-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Jardim De Piranhas', :zip_code => '59.324-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Jardim Do Serido', :zip_code => '59.343-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Joao Camara', :zip_code => '59.550-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Joao Dias', :zip_code => '59.880-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Jose Da Penha', :zip_code => '59.980-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Jucurutu', :zip_code => '59.330-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Jundia De Cima', :zip_code => '59.188-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Lagoa Danta', :zip_code => '59.227-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Lagoa De Pedras', :zip_code => '59.244-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Lagoa De Velhos', :zip_code => '59.430-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Lagoa Nova', :zip_code => '59.390-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Lagoa Salgada', :zip_code => '59.247-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Lajes', :zip_code => '59.535-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Lajes Pintadas', :zip_code => '59.235-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Lucrecia', :zip_code => '59.805-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Luis Gomes', :zip_code => '59.940-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Macaiba', :zip_code => '59.280-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Macau', :zip_code => '59.500-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Major Felipe', :zip_code => '59.985-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Major Sales', :zip_code => '59.945-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Marcelino Vieira', :zip_code => '59.970-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Martins', :zip_code => '59.800-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Mata De Sao Braz', :zip_code => '59.958-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Maxaranguape', :zip_code => '59.580-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Messias Targino', :zip_code => '59.775-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Montanhas', :zip_code => '59.198-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Monte Alegre', :zip_code => '59.182-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Monte Das Gameleiras', :zip_code => '59.217-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Mossoro', :zip_code => '59.600-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Natal', :zip_code => '59.000-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Nisia Floresta', :zip_code => '59.164-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Nova Cruz', :zip_code => '59.215-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Olho-dagua Do Borges', :zip_code => '59.730-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Ouro Branco', :zip_code => '59.347-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Venha-ver', :zip_code => '59.925-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Parana', :zip_code => '59.950-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Parau', :zip_code => '59.660-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Parazinho', :zip_code => '59.586-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Parelhas', :zip_code => '59.360-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Passa E Fica', :zip_code => '59.218-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Passagem', :zip_code => '59.259-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Patu', :zip_code => '59.770-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Pau Dos Ferros', :zip_code => '59.900-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Pedra Grande', :zip_code => '59.588-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Pedra Preta', :zip_code => '59.547-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Pedro Avelino', :zip_code => '59.530-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Pedro Velho', :zip_code => '59.196-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Pendencias', :zip_code => '59.504-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Piloes', :zip_code => '59.960-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Poco Branco', :zip_code => '59.560-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Portalegre', :zip_code => '59.810-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Porto Do Mangue', :zip_code => '59.668-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Serra Caiada', :zip_code => '59.245-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Pureza', :zip_code => '59.582-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Rafael Fernandes', :zip_code => '59.990-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Rafael Godeiro', :zip_code => '59.740-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Riacho Da Cruz', :zip_code => '59.820-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Riacho De Santana', :zip_code => '59.987-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Riachuelo', :zip_code => '59.470-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Rodolfo Fernandes', :zip_code => '59.830-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Rosario', :zip_code => '59.885-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Ruy Barbosa', :zip_code => '59.420-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Salva Vida', :zip_code => '59.803-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Santa Cruz', :zip_code => '59.200-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Santa Fe', :zip_code => '59.189-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Santa Maria', :zip_code => '59.464-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Santa Teresa', :zip_code => '59.526-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Santana Do Matos', :zip_code => '59.520-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Santana Do Serido', :zip_code => '59.350-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Santo Antonio', :zip_code => '59.255-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Santo Antonio Do Potengi', :zip_code => '59.298-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Bento Do Norte', :zip_code => '59.590-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Bento Do Trairi', :zip_code => '59.210-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Bernardo', :zip_code => '59.943-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Fernando', :zip_code => '59.327-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Francisco Do Oeste', :zip_code => '59.908-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Geraldo', :zip_code => '59.785-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Goncalo Do Amarante', :zip_code => '59.290-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Joao Do Sabugi', :zip_code => '59.310-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Jose Da Passagem', :zip_code => '59.524-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Jose De Mipibu', :zip_code => '59.162-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Jose Do Campestre', :zip_code => '59.275-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Jose Do Serido', :zip_code => '59.378-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Miguel', :zip_code => '59.920-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Paulo Do Potengi', :zip_code => '59.460-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Pedro', :zip_code => '59.480-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Rafael', :zip_code => '59.518-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Tome', :zip_code => '59.400-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Vicente', :zip_code => '59.340-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Senador Eloi De Souza', :zip_code => '59.250-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Senador Georgino Avelino', :zip_code => '59.168-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Serra Da Tapuia', :zip_code => '59.445-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Serra De Sao Bento', :zip_code => '59.214-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Serra Negra Do Norte', :zip_code => '59.318-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Serrinha', :zip_code => '59.258-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Severiano Melo', :zip_code => '59.856-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sitio Novo', :zip_code => '59.440-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Taboleiro Grande', :zip_code => '59.840-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Taipu', :zip_code => '59.565-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Tangara', :zip_code => '59.240-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Tenente Ananias', :zip_code => '59.955-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Tibau', :zip_code => '59.678-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Tibau Do Sul', :zip_code => '59.178-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Timbauba Dos Batistas', :zip_code => '59.320-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Touros', :zip_code => '59.584-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Trairi', :zip_code => '59.242-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Triunfo Potiguar', :zip_code => '59.685-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Umarizal', :zip_code => '59.865-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Upanema', :zip_code => '59.670-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Varzea', :zip_code => '59.185-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Vera Cruz', :zip_code => '59.184-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Vicosa', :zip_code => '59.815-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Vila Flor', :zip_code => '59.192-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Serra Do Mel', :zip_code => '59.663-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Itaja', :zip_code => '59.513-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Tenente Laurentino Cruz', :zip_code => '59.338-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Rio Do Fogo', :zip_code => '59.578-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Sao Miguel De Touros', :zip_code => '59.585-000', :state => state  ); c.save!
c = BSC::City.new(:name => 'Serrinha Dos Pintos', :zip_code => '59.808-000', :state => state  ); c.save!

