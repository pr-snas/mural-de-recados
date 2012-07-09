usuario = Usuario.create(nome: 'Fake user', email: 'user@example.org',
                         password: 'secret', papel: 'admin')

Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 21, left: 36, z_index: 1, width: 210, height: 210)

Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 25, left: 302, z_index: 2, width: 300, height: 200)

Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 16, left: 645, z_index: 3, width: 200, height: 150)

Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 20, left: 898, z_index: 4, width: 280, height: 180)

Recado.create(conteudo: 'Lorem ipsum dolor sit amet', usuario: usuario,
              top: 265, left: 426, z_index: 5, width: 500, height: 400)
