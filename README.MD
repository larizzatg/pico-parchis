# Pico-Parchis

### Game Manager
controla los estados del juego
menu
salida
perdido
gano
turno

### Board
casillas:
  tienen que tener posicion
  dibujo
casas
  - posicion donde inician cada fichas
  fichas
    - cuantos pasos la ficha a recorrido
    - la cantidad de pasos que ha dado
metas

fn: movimiento de la ficha, movimiento normal, movimiento meta
  al moverse la cantidad de passos 68>no, si la suma de 68> restar 68
  aqui muestras

#### Fichas
- id
- movimientos
- posicion tablero
- casa
- status: en_casa, en_carrera, en_camino_meta, en_meta
- posicion inial segun casa



## Extra 
animar los dados girandolos

---
# Game States
### Welcome Menu
Se presenta la pantalla de bienvenida y se comienza un nuevo juego
### Player Selection
Se presenta la seleccion de colores para los jugadores, pueden comenzar el juego

### New Game
Un juego desde cero, se ve el board dibujado, los jugadores tiran dados a ver cual le toca primero

### Player Turn
Al jugador correspondiente le tocara tirar el dado, y mover las fichas

### Return to home
Una casilla vuelve a la casa
### Goal Reached
Un jugador lleva a la meta una de sus casillas

### Win
Un jugador lleva a la meta todas sus casillas