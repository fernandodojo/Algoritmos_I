function love.conf(t)
    t.title = "FireGun"        -- O título da janela do jogo em (string)
    t.author = "Unnamed"        -- O autor do jogo (string)
    t.identity = false          -- O nome do diretório save
    --t.version = 0               -- A versão do LÖVE para a qual o jogo é feito (número)
    t.console = true           -- Vincula a um console (boleano, somente Windows)

    --t.screen.width = 800        -- A largura da janela (número)
    --t.screen.height = 600       -- A altura da janela (número)
    --t.screen.fullscreen = false -- Habilita tela cheia (boleano)
    --t.screen.resizable=false	  -- Habilida janela redimensinável
    --t.screen.minwidth=800		  --Tamanho minimo da largura da janela
    --t.screen.minheight=600	  --Tamanho minimo da altura da janela
    --t.screen.vsync = false       -- Habilita o sync vertical (boleano)
    --t.screen.fsaa = 0           -- O número de buffer FSAA (número)

    --t.modules.joystick = true   -- Habilita o módulo joystick (boleano)
    t.modules.audio = true      -- Habilita o módulo audio (boleano)
    t.modules.keyboard = true   -- Habilita o módulo keyboard (boleano)
    t.modules.event = true      -- Habilita o módulo event (boleano)
    t.modules.image = true      -- Habilita o módulo image (boleano)
    t.modules.graphics = true   -- Habilita o módulo graphics (boleano)
    t.modules.timer = true      -- Habilita o módulo timer (boleano)
    t.modules.mouse = true      -- Habilita o módulo mouse (boleano)
    t.modules.sound = true      -- Habilita o módulo sound (boleano)
    t.modules.physics = true    -- Habilita o módulo physics (boleano)
    t.modules.math = true
end