usuario = Usuario.create(nome: 'Marcos Lopes', email: 'marcosmlopes01@gmail.com',
                         password: 'secret', papel: 'admin')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 54, left: 13, z_index: 1, width: 210, height: 210,
              background_color: 'red', font_family: 'Helvetica')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 110, left: 170, z_index: 2, width: 300, height: 200,
              background_color: '#ffffff', font_family: 'Arial')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 290, left: 90, z_index: 3, width: 200, height: 150,
              background_color: 'blue', font_family: 'Arial')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 80, left: 990, z_index: 4, width: 280, height: 180,
              background_color: 'yellow', font_family: 'Arial')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 120, left: 510, z_index: 5, width: 500, height: 400,
              background_color: '#ccc', font_family: 'Arial')
