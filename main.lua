------------------------------------------------------------------------------------------------
--- INFO --- SCREEN --- GAME ENGINE --- FV Art's -----------------------------------------------
-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')
-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
  if arg[#arg] == "-debug" then require("mobdebug").start() end
love.window.setTitle("La Champi-Taverne de Jorgius - I (c) - 2021 FV Art's Games")
love.window.setMode(1024, 768, {fullscreen=false, vsync=true}) --, winwidth=1024, winheight=768})
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
--- Gameplay La Champi-Taverne de Jorgius - I ---

--- raquette ---

local raquette

  pRaquette = {}
  pRaquette.x = 0
  pRaquette.y = 0
  pRaquette.largeur = 80
  pRaquette.hauteur = 80
  
local balle

  pBalle = {}
  pBalle.x = 0
  pBalle.y = 0
  pBalle.largeur = 80
  pBalle.hauteur = 80
  pBalle.colle = false
  pBalle.vx = 0
  pBalle.vy = 0

-- Prët 3, 2, 1, Gooo ! Tuuuuut ! Départ ---

function love.load()
  
  largeur = love.graphics.getWidth()
  hauteur = love.graphics.getHeight()
  print("largeur", largeur)
  print("hauteur", hauteur)
  
  raquette = love.graphics.newImage("images/GC-tile-pad.png")
  pRaquette.y = (hauteur - 10) - pRaquette.hauteur
  
  
  balle = love.graphics.newImage("images/GC-tile-ball.png")

end

function love.update(dt) 

  pRaquette.x = love.mouse.getX()
  
end

function love.draw() 
  
  love.graphics.draw(raquette, pRaquette.x, pRaquette.y)
  love.graphics.draw(balle, pBalle.x, pBalle.y)
  
end

function love.mousepressed(x, y, n) 
  
  
end

function love.keypressed(key) 
  
  
  
end