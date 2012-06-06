usuario = Usuario.create(nome: 'Marcos Lopes', email: 'marcosmlopes01@gmail.com',
                         password: 'secret', papel: 'admin')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 21, left: 36, z_index: 1, width: 210, height: 210, pin_class: 'red',
              background_color: 'red', font_family: 'Helvetica', text_color: '#000')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 25, left: 302, z_index: 2, width: 300, height: 200, pin_class: 'black',
              background_color: '#ffffff', font_family: 'Arial', text_color: '#000')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 16, left: 645, z_index: 3, width: 200, height: 150, pin_class: 'green',
              background_color: 'blue', font_family: 'Arial', text_color: '#fff')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 20, left: 898, z_index: 4, width: 280, height: 180, pin_class: 'blue',
              background_color: 'yellow', font_family: 'Arial', text_color: '#000')
Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 265, left: 426, z_index: 5, width: 500, height: 400, pin_class: 'red',
              background_color: '#ccc', font_family: 'Arial', text_color: '#000')
