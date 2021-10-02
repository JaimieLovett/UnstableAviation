///@desc initialise_bullet
///@arg direction
///@arg speed
///@arg faction
///@arg creator
///@arg bullet_instance

function initialise_bullet(_obj, _x, _y, _dir, _spd, _fac, _creator){
    var inst = instance_create_layer(_x, _y, "Instances", _obj);
    with(inst){
        direction = _dir;
        speed = _spd;
        faction = _fac;
        creator = _creator;
        
        switch(faction){
            case factions.enemy:
                image_blend = c_red;
                break;
                
            case factions.ally:
                image_blend = c_aqua;
                break;
        }
    }
}