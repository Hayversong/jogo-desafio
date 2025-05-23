other.vida -= 25; // Causa 25 de dano ao inimigo

if (other.vida <= 0) {
    global.pontos += 100;
	instance_destroy(other); // Destroi o inimigo
}

// Destroi o projétil também, se necessário:
instance_destroy();