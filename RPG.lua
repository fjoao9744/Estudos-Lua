math.randomseed(os.time())

player = {
    nome = "",
    hp_max = math.floor(math.random() * 10) + 10,
    hp = hp_max,
    tomar_dano = function(self, dano)
        self.hp = self.hp - dano
        if self.hp - dano <= 0 then
            self.hp = 0
        end
    end,

    regenerar = function(self, vida) 
        self.hp = self.hp + vida
        if self.hp + vida >= self.hp_max then
            self.hp = self.hp_max
        end
    end,

    damage = math.floor(math.random() * 5) + 1,

    dar_dano = function(self, monstro)
        monstro:tomar_dano(self.damage)
    end
    
}

slime = {
    hp_max = math.floor(math.random() * 10) + 10,
    hp = hp_max,
    tomar_dano = function(self, dano)
        self.hp = self.hp - dano
        if self.hp - dano <= 0 then
            self.hp = 0
        end
    end,

    regenerar = function(self, vida) 
        self.hp = self.hp + vida
        if self.hp + vida >= self.hp_max then
            self.hp = self.hp_max
        end
    end,

    damage = math.floor(math.random() * 5),

    dar_dano = function(self, player)
        player:tomar_dano(self.damage)
    end
    
}

orc = {
    hp_max = math.floor(math.random() * 10) + 10,
    hp = hp_max,
    tomar_dano = function(self, dano)
        self.hp = self.hp - dano
        if self.hp - dano <= 0 then
            self.hp = 0
        end
    end,

    regenerar = function(self, vida) 
        self.hp = self.hp + vida
        if self.hp + vida >= self.hp_max then
            self.hp = self.hp_max
        end
    end,

    damage = math.floor(math.random() * 5) + 1,

    dar_dano = function(self, player)
        player:tomar_dano(self.damage)
    end
    
}

dragon = {
    hp_max = math.floor(math.random() * 10) + 10,
    hp = hp_max,
    tomar_dano = function(self, dano)
        self.hp = self.hp - dano
        if self.hp - dano <= 0 then
            self.hp = 0
        end
    end,

    regenerar = function(self, vida) 
        self.hp = self.hp + vida
        if self.hp + vida >= self.hp_max then
            self.hp = self.hp_max
        end
    end,

    damage = math.floor(math.random() * 5) + 1,

    dar_dano = function(self, player)
        player:tomar_dano(self.damage)
    end
    
}
