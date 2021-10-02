///@desc create_bullet
///@arg direction
///@arg speed
///@arg faction
///@arg creator
///@arg gun_type

function create_bullet(_x, _y, _dir, _spd, _fac, _creator, _gun_type){
    // make _gun_type an optional arguement
    if (_gun_type == undefined) _gun_type = -1;
    
    switch(_gun_type){
        case powerups.three_bullets:
            initialise_bullet(oBullet, _x, _y, _dir, _spd, _fac, _creator);
            // no break
        case powerups.two_bullets:
            var _sep = 12;
            initialise_bullet(oBullet, _x + lengthdir_x(_sep,_dir + 90), _y+ lengthdir_y(_sep,_dir + 90), _dir, _spd, _fac, _creator);
            initialise_bullet(oBullet, _x + lengthdir_x(_sep,_dir - 90), _y+ lengthdir_y(_sep,_dir - 90), _dir, _spd, _fac, _creator);
            break;
        
        case powerups.four_bullets:
            var _sep = 7;
            var _bullet_angle;
            var i = 0;
            
            repeat(4){
                _bullet_angle = _dir + (i * 90);
                initialise_bullet(oBullet,
                    _x + lengthdir_x(_sep,_bullet_angle),
                    _y+ lengthdir_y(_sep,_bullet_angle),
                    _bullet_angle, _spd, _fac, _creator
                );
                i++;
            }
            break;
        
        case powerups.star_bullets:
            var _sep = 7;
            var _bullet_angle;
            var i = 0;
            
            repeat(8){
                _bullet_angle = _dir + (i * 45);
                initialise_bullet(oBullet,
                    _x + lengthdir_x(_sep,_bullet_angle),
                    _y+ lengthdir_y(_sep,_bullet_angle),
                    _bullet_angle, _spd, _fac, _creator
                );
                i++;
            }
            break;
            
        default:
            initialise_bullet(oBullet, _x, _y, _dir, _spd, _fac, _creator);
            break;
    }       
}