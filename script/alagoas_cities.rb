#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/../../../../config/environment'

country = BSC::Country.find_by_name('Brazil')
country ||= BSC::Country.create(:name => 'Brazil')

state = country.states.find_by_name('Alagoas')
state ||= BSC::State.create!( :name => 'Alagoas', :code => 'AL', :country => country);

c = BSC::City.new(:name => 'Agua Branca', :zip_code => '57.490-000', :state => state); c.save 
c = BSC::City.new(:name => 'Alecrim', :zip_code => '57.405-000', :state => state); c.save 
c = BSC::City.new(:name => 'Anadia', :zip_code => '57.660-000', :state => state); c.save 
c = BSC::City.new(:name => 'Anel', :zip_code => '57.710-000', :state => state); c.save 
c = BSC::City.new(:name => 'Arapiraca', :zip_code => '57.300-000', :state => state); c.save 
c = BSC::City.new(:name => 'Atalaia', :zip_code => '57.690-000', :state => state); c.save 
c = BSC::City.new(:name => 'Barra De Santo Antonio', :zip_code => '57.925-000', :state => state); c.save 
c = BSC::City.new(:name => 'Barra De Sao Miguel', :zip_code => '57.180-000', :state => state); c.save 
c = BSC::City.new(:name => 'Barra Grande', :zip_code => '57.958-000', :state => state); c.save 
c = BSC::City.new(:name => 'Batalha', :zip_code => '57.420-000', :state => state); c.save 
c = BSC::City.new(:name => 'Belem', :zip_code => '57.630-000', :state => state); c.save 
c = BSC::City.new(:name => 'Belo Monte', :zip_code => '57.435-000', :state => state); c.save 
c = BSC::City.new(:name => 'Boca Da Mata', :zip_code => '57.680-000', :state => state); c.save 
c = BSC::City.new(:name => 'Branquinha', :zip_code => '57.830-000', :state => state); c.save 
c = BSC::City.new(:name => 'Cacimbinhas', :zip_code => '57.570-000', :state => state); c.save 
c = BSC::City.new(:name => 'Cajueiro', :zip_code => '57.770-000', :state => state); c.save 
c = BSC::City.new(:name => 'Caldeiroes De Cima', :zip_code => '57.614-000', :state => state); c.save 
c = BSC::City.new(:name => 'Campo Alegre', :zip_code => '57.250-000', :state => state); c.save 
c = BSC::City.new(:name => 'Campo Grande', :zip_code => '57.350-000', :state => state); c.save 
c = BSC::City.new(:name => 'Canafistula', :zip_code => '57.613-000', :state => state); c.save 
c = BSC::City.new(:name => 'Canapi', :zip_code => '57.530-000', :state => state); c.save 
c = BSC::City.new(:name => 'Canastra', :zip_code => '57.895-000', :state => state); c.save 
c = BSC::City.new(:name => 'Capela', :zip_code => '57.780-000', :state => state); c.save 
c = BSC::City.new(:name => 'Carneiros', :zip_code => '57.535-000', :state => state); c.save 
c = BSC::City.new(:name => 'Cha Preta', :zip_code => '57.760-000', :state => state); c.save 
c = BSC::City.new(:name => 'Coite Do Noia', :zip_code => '57.325-000', :state => state); c.save 
c = BSC::City.new(:name => 'Colonia Leopoldina', :zip_code => '57.975-000', :state => state); c.save 
c = BSC::City.new(:name => 'Coqueiro Seco', :zip_code => '57.140-000', :state => state); c.save 
c = BSC::City.new(:name => 'Coruripe', :zip_code => '57.230-000', :state => state); c.save 
c = BSC::City.new(:name => 'Craibas', :zip_code => '57.320-000', :state => state); c.save 
c = BSC::City.new(:name => 'Delmiro Gouveia', :zip_code => '57.480-000', :state => state); c.save 
c = BSC::City.new(:name => 'Dois Riachos', :zip_code => '57.560-000', :state => state); c.save 
c = BSC::City.new(:name => 'Entremontes', :zip_code => '57.465-000', :state => state); c.save 
c = BSC::City.new(:name => 'Feira Grande', :zip_code => '57.340-000', :state => state); c.save 
c = BSC::City.new(:name => 'Teotonio Vilela', :zip_code => '57.265-000', :state => state); c.save 
c = BSC::City.new(:name => 'Feliz Deserto', :zip_code => '57.220-000', :state => state); c.save 
c = BSC::City.new(:name => 'Fernao Velho', :zip_code => '57.000-000', :state => state); c.save 
c = BSC::City.new(:name => 'Flexeiras', :zip_code => '57.995-000', :state => state); c.save 
c = BSC::City.new(:name => 'Floriano Peixoto', :zip_code => '57.000-000', :state => state); c.save 
c = BSC::City.new(:name => 'Girau Do Ponciano', :zip_code => '57.360-000', :state => state); c.save 
c = BSC::City.new(:name => 'Ibateguara', :zip_code => '57.890-000', :state => state); c.save 
c = BSC::City.new(:name => 'Igaci', :zip_code => '57.620-000', :state => state); c.save 
c = BSC::City.new(:name => 'Igreja Nova', :zip_code => '57.280-000', :state => state); c.save 
c = BSC::City.new(:name => 'Inhapi', :zip_code => '57.545-000', :state => state); c.save 
c = BSC::City.new(:name => 'Jacare Dos Homens', :zip_code => '57.430-000', :state => state); c.save 
c = BSC::City.new(:name => 'Jacuipe', :zip_code => '57.960-000', :state => state); c.save 
c = BSC::City.new(:name => 'Japaratinga', :zip_code => '57.950-000', :state => state); c.save 
c = BSC::City.new(:name => 'Jaramataia', :zip_code => '57.425-000', :state => state); c.save 
c = BSC::City.new(:name => 'Joaquim Gomes', :zip_code => '57.980-000', :state => state); c.save 
c = BSC::City.new(:name => 'Jundia', :zip_code => '57.965-000', :state => state); c.save 
c = BSC::City.new(:name => 'Junqueiro', :zip_code => '57.270-000', :state => state); c.save 
c = BSC::City.new(:name => 'Lagoa Da Canoa', :zip_code => '57.330-000', :state => state); c.save 
c = BSC::City.new(:name => 'Limoeiro De Anadia', :zip_code => '57.260-000', :state => state); c.save 
c = BSC::City.new(:name => 'Maceio', :zip_code => '57.000-000', :state => state); c.save 
c = BSC::City.new(:name => 'Major Isidoro', :zip_code => '57.580-000', :state => state); c.save 
c = BSC::City.new(:name => 'Mar Vermelho', :zip_code => '57.730-000', :state => state); c.save 
c = BSC::City.new(:name => 'Maragogi', :zip_code => '57.955-000', :state => state); c.save 
c = BSC::City.new(:name => 'Maravilha', :zip_code => '57.520-000', :state => state); c.save 
c = BSC::City.new(:name => 'Marechal Deodoro', :zip_code => '57.160-000', :state => state); c.save 
c = BSC::City.new(:name => 'Maribondo', :zip_code => '57.670-000', :state => state); c.save 
c = BSC::City.new(:name => 'Mata Grande', :zip_code => '57.540-000', :state => state); c.save 
c = BSC::City.new(:name => 'Matriz De Camaragibe', :zip_code => '57.910-000', :state => state); c.save 
c = BSC::City.new(:name => 'Messias', :zip_code => '57.990-000', :state => state); c.save 
c = BSC::City.new(:name => 'Minador Do Negrao', :zip_code => '57.615-000', :state => state); c.save 
c = BSC::City.new(:name => 'Monteiropolis', :zip_code => '57.440-000', :state => state); c.save 
c = BSC::City.new(:name => 'Munguba', :zip_code => '57.850-000', :state => state); c.save 
c = BSC::City.new(:name => 'Murici', :zip_code => '57.820-000', :state => state); c.save 
c = BSC::City.new(:name => 'Novo Lino', :zip_code => '57.970-000', :state => state); c.save 
c = BSC::City.new(:name => 'Olho Dagua Das Flores', :zip_code => '57.442-000', :state => state); c.save 
c = BSC::City.new(:name => 'Olho Dagua Do Casado', :zip_code => '57.470-000', :state => state); c.save 
c = BSC::City.new(:name => 'Olho D Agua Grande', :zip_code => '57.390-000', :state => state); c.save 
c = BSC::City.new(:name => 'Olivenca', :zip_code => '57.550-000', :state => state); c.save 
c = BSC::City.new(:name => 'Ouro Branco', :zip_code => '57.525-000', :state => state); c.save 
c = BSC::City.new(:name => 'Palestina', :zip_code => '57.410-000', :state => state); c.save 
c = BSC::City.new(:name => 'Palmeira Dos Indios', :zip_code => '57.600-000', :state => state); c.save 
c = BSC::City.new(:name => 'Pao De Acucar', :zip_code => '57.400-000', :state => state); c.save 
c = BSC::City.new(:name => 'Passo De Camaragibe', :zip_code => '57.930-000', :state => state); c.save 
c = BSC::City.new(:name => 'Paulo Jacinto', :zip_code => '57.740-000', :state => state); c.save 
c = BSC::City.new(:name => 'Penedo', :zip_code => '57.200-000', :state => state); c.save 
c = BSC::City.new(:name => 'Piacabucu', :zip_code => '57.210-000', :state => state); c.save 
c = BSC::City.new(:name => 'Pilar', :zip_code => '57.150-000', :state => state); c.save 
c = BSC::City.new(:name => 'Pindoba', :zip_code => '57.720-000', :state => state); c.save 
c = BSC::City.new(:name => 'Piranhas', :zip_code => '57.460-000', :state => state); c.save 
c = BSC::City.new(:name => 'Poco Das Trincheiras', :zip_code => '57.510-000', :state => state); c.save 
c = BSC::City.new(:name => 'Porto Calvo', :zip_code => '57.900-000', :state => state); c.save 
c = BSC::City.new(:name => 'Porto De Pedras', :zip_code => '57.945-000', :state => state); c.save 
c = BSC::City.new(:name => 'Porto Real Do Colegio', :zip_code => '57.290-000', :state => state); c.save 
c = BSC::City.new(:name => 'Poxim', :zip_code => '57.235-000', :state => state); c.save 
c = BSC::City.new(:name => 'Quebrangulo', :zip_code => '57.750-000', :state => state); c.save 
c = BSC::City.new(:name => 'Riacho Do Sertao', :zip_code => '57.585-000', :state => state); c.save 
c = BSC::City.new(:name => 'Rio Largo', :zip_code => '57.100-000', :state => state); c.save 
c = BSC::City.new(:name => 'Rocha Cavalcante', :zip_code => '57.810-000', :state => state); c.save 
c = BSC::City.new(:name => 'Roteiro', :zip_code => '57.246-000', :state => state); c.save 
c = BSC::City.new(:name => 'Santa Efigenia', :zip_code => '57.790-000', :state => state); c.save 
c = BSC::City.new(:name => 'Santa Luzia Do Norte', :zip_code => '57.130-000', :state => state); c.save 
c = BSC::City.new(:name => 'Santana Do Ipanema', :zip_code => '57.500-000', :state => state); c.save 
c = BSC::City.new(:name => 'Santana Do Mundau', :zip_code => '57.840-000', :state => state); c.save 
c = BSC::City.new(:name => 'Sao Bras', :zip_code => '57.380-000', :state => state); c.save 
c = BSC::City.new(:name => 'Sao Jose Da Laje', :zip_code => '57.860-000', :state => state); c.save 
c = BSC::City.new(:name => 'Sao Jose Da Tapera', :zip_code => '57.445-000', :state => state); c.save 
c = BSC::City.new(:name => 'Sao Luis Do Quitunde', :zip_code => '57.920-000', :state => state); c.save 
c = BSC::City.new(:name => 'Sao Miguel Dos Campos', :zip_code => '57.240-000', :state => state); c.save 
c = BSC::City.new(:name => 'Sao Miguel Dos Milagres', :zip_code => '57.940-000', :state => state); c.save 
c = BSC::City.new(:name => 'Sao Sebastiao', :zip_code => '57.275-000', :state => state); c.save 
c = BSC::City.new(:name => 'Sapucaia', :zip_code => '57.693-000', :state => state); c.save 
c = BSC::City.new(:name => 'Satuba', :zip_code => '57.120-000', :state => state); c.save 
c = BSC::City.new(:name => 'Senador Rui Palmeira', :zip_code => '57.515-000', :state => state); c.save 
c = BSC::City.new(:name => 'Taboleiro Do Pinto', :zip_code => '57.110-000', :state => state); c.save 
c = BSC::City.new(:name => 'Tanque Darca', :zip_code => '57.635-000', :state => state); c.save 
c = BSC::City.new(:name => 'Taquarana', :zip_code => '57.640-000', :state => state); c.save 
c = BSC::City.new(:name => 'Tatuamunha', :zip_code => '57.948-000', :state => state); c.save 
c = BSC::City.new(:name => 'Traipu', :zip_code => '57.370-000', :state => state); c.save 
c = BSC::City.new(:name => 'Uniao Dos Palmares', :zip_code => '57.800-000', :state => state); c.save 
c = BSC::City.new(:name => 'Usina Camacari', :zip_code => '57.233-000', :state => state); c.save 
c = BSC::City.new(:name => 'Vicosa', :zip_code => '57.700-000', :state => state); c.save 
c = BSC::City.new(:name => 'Alazao', :zip_code => '57.317-000', :state => state); c.save 
c = BSC::City.new(:name => 'Baixa Da Onca', :zip_code => '57.317-100', :state => state); c.save 
c = BSC::City.new(:name => 'Baixa Do Capim', :zip_code => '57.317-200', :state => state); c.save 
c = BSC::City.new(:name => 'Balsamo', :zip_code => '57.317-300', :state => state); c.save 
c = BSC::City.new(:name => 'Bananeiras', :zip_code => '57.317-400', :state => state); c.save 
c = BSC::City.new(:name => 'Batingas', :zip_code => '57.317-500', :state => state); c.save 
c = BSC::City.new(:name => 'Boa Vista', :zip_code => '57.317-600', :state => state); c.save 
c = BSC::City.new(:name => 'Bom Jardim', :zip_code => '57.317-700', :state => state); c.save 
c = BSC::City.new(:name => 'Cajarana', :zip_code => '57.317-800', :state => state); c.save 
c = BSC::City.new(:name => 'Canaa', :zip_code => '57.317-900', :state => state); c.save 
c = BSC::City.new(:name => 'Camadanta', :zip_code => '57.318-000', :state => state); c.save 
c = BSC::City.new(:name => 'Cangandu', :zip_code => '57.318-100', :state => state); c.save 
c = BSC::City.new(:name => 'Carrasco', :zip_code => '57.318-200', :state => state); c.save 
c = BSC::City.new(:name => 'Gaspar', :zip_code => '57.318-300', :state => state); c.save 
c = BSC::City.new(:name => 'Jenipapo', :zip_code => '57.318-400', :state => state); c.save 
c = BSC::City.new(:name => 'Lagoa Da Pedra', :zip_code => '57.318-500', :state => state); c.save 
c = BSC::City.new(:name => 'Lagoa Do Rancho', :zip_code => '57.318-600', :state => state); c.save 
c = BSC::City.new(:name => 'Laranjal', :zip_code => '57.318-700', :state => state); c.save 
c = BSC::City.new(:name => 'Massaranduba', :zip_code => '57.318-800', :state => state); c.save 
c = BSC::City.new(:name => 'Olho Dagua De Cima', :zip_code => '57.318-900', :state => state); c.save 
c = BSC::City.new(:name => 'Olho Dagua Dos Dandanhas', :zip_code => '57.319-000', :state => state); c.save 
c = BSC::City.new(:name => 'Pau Darco', :zip_code => '57.319-100', :state => state); c.save 
c = BSC::City.new(:name => 'Pau Ferro', :zip_code => '57.319-200', :state => state); c.save 
c = BSC::City.new(:name => 'Pocao', :zip_code => '57.319-300', :state => state); c.save 
c = BSC::City.new(:name => 'Poco Da Pedra', :zip_code => '57.319-400', :state => state); c.save 
c = BSC::City.new(:name => 'Sapucaia', :zip_code => '57.319-500', :state => state); c.save 
c = BSC::City.new(:name => 'Taboquinha', :zip_code => '57.319-600', :state => state); c.save 
c = BSC::City.new(:name => 'Vila Aparecida', :zip_code => '57.319-700', :state => state); c.save 
c = BSC::City.new(:name => 'Vila Sao Francisco', :zip_code => '57.319-800', :state => state); c.save 
c = BSC::City.new(:name => 'Anum Novo', :zip_code => '57.610-100', :state => state); c.save 
c = BSC::City.new(:name => 'Anum Velho', :zip_code => '57.610-200', :state => state); c.save 
c = BSC::City.new(:name => 'Barra Do Bonifacio', :zip_code => '57.610-300', :state => state); c.save 
c = BSC::City.new(:name => 'Boa Sorte', :zip_code => '57.610-400', :state => state); c.save 
c = BSC::City.new(:name => 'Boa Vista', :zip_code => '57.610-500', :state => state); c.save 
c = BSC::City.new(:name => 'Bonifacio', :zip_code => '57.610-600', :state => state); c.save 
c = BSC::City.new(:name => 'Coruripe Da Cal', :zip_code => '57.610-900', :state => state); c.save 
c = BSC::City.new(:name => 'Estrela De Alagoas', :zip_code => '57.625-000', :state => state); c.save 
c = BSC::City.new(:name => 'Lagoa Da Areia', :zip_code => '57.611-200', :state => state); c.save 
c = BSC::City.new(:name => 'Lagoa Do Caldeirao', :zip_code => '57.611-300', :state => state); c.save 
c = BSC::City.new(:name => 'Lagoa Do Canto', :zip_code => '57.611-400', :state => state); c.save 
c = BSC::City.new(:name => 'Lagoa Dantas', :zip_code => '57.611-500', :state => state); c.save 
c = BSC::City.new(:name => 'Lagoa Do Exu', :zip_code => '57.611-600', :state => state); c.save 
c = BSC::City.new(:name => 'Lagoa Do Rancho', :zip_code => '57.611-700', :state => state); c.save 
c = BSC::City.new(:name => 'Lajes Do Caldeirao', :zip_code => '57.611-800', :state => state); c.save 
c = BSC::City.new(:name => 'Moreira', :zip_code => '57.611-900', :state => state); c.save 
c = BSC::City.new(:name => 'Riacho Fundo De Cima', :zip_code => '57.611-000', :state => state); c.save 
c = BSC::City.new(:name => 'Santo Antonio', :zip_code => '57.611-100', :state => state); c.save 
c = BSC::City.new(:name => 'Serra Da Mandioca', :zip_code => '57.612-000', :state => state); c.save 
c = BSC::City.new(:name => 'Serra Do Sao Jose', :zip_code => '57.612-500', :state => state); c.save 
c = BSC::City.new(:name => 'Palmeira De Fora', :zip_code => '57.613-500', :state => state); c.save 
c = BSC::City.new(:name => 'Paripueira', :zip_code => '57.935-000', :state => state); c.save 
c = BSC::City.new(:name => 'Pariconha', :zip_code => '57.475-000', :state => state); c.save 
c = BSC::City.new(:name => 'Campestre', :zip_code => '57.968-000', :state => state); c.save 

