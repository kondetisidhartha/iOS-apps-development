let skeleton = Enemy(health: 100, attackStrength: 10)


let dragon = Dragon(health: 100, attackStrength: 15)
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.tookDamage(damageStrength: 10)
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are hurricane!")
dragon.move()
dragon.attack()
print(dragon.health)
