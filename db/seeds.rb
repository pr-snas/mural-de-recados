usuario = Usuario.create(nome: 'Marcos Lopes', email: 'marcosmlopes01@gmail.com',
                         password: 'secret', papel: 'admin')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 300, left: 150, z_index: 1, width: 200, height: 200,
              background_color: 'red', font_family: 'Helvetica')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 200, left: 100, z_index: 2, width: 300, height: 200,
              background_color: '#ffffff', font_family: 'Arial')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 270, left: 200, z_index: 3, width: 200, height: 150,
              background_color: 'blue', font_family: 'Arial')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 300, left: 280, z_index: 4, width: 280, height: 180,
              background_color: 'yellow', font_family: 'Arial')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 300, left: 100, z_index: 5, width: 500, height: 400,
              background_color: '#ccc', font_family: 'Arial')
