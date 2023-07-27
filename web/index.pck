GDPC                 �
                                                                         T   res://.godot/exported/133200997/export-12c1c9bf34e1ec0d2e3568d23d52dc95-porkchop.scn�7      5      �J>�$��>��x����    P   res://.godot/exported/133200997/export-4262c4b3aac32f7673e96f8022179ce1-axe.scn �	      (      ���%�b���#Ga�    T   res://.godot/exported/133200997/export-76e0adcbc83681695885bae615f516ae-world.scn   �A      @      �UWO&}?L�"�nI?    T   res://.godot/exported/133200997/export-7cadf0ec706f5a89c767029c0fc20706-apple.scn   `      �      gU�da� �C�����    \   res://.godot/exported/133200997/export-aefcc7c221d288f2f60f0d638c061a07-explosion_effect.scn�      �      ҮxMuD�y��
H�Z    T   res://.godot/exported/133200997/export-ba2cf031a81e3ad0f29102480bdc365a-piggy.scn   �+      �	      #�3Ao�w$��ZR	��L    ,   res://.godot/global_script_class_cache.cfg  �I             ��Р�8���8~$}P�    H   res://.godot/imported/apple.png-53a5ba701c353857fc5b432b6c413138.ctex           �       ��p��r'���`C��    D   res://.godot/imported/axe.png-4bc9ac444747047d74a0e175e1420d1e.ctex 0      �       ��]�3�h�`�U�    L   res://.godot/imported/explosion.png-730076d88b39dbfd5c22ad71f1135b01.ctex   �      �       �f;^�0��򙂞@�S7    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex      �      �̛�*$q�*�́     D   res://.godot/imported/pig.png-27c779637403e465d2e03317ab3cc4a3.ctex �%            ��|��:9�W�tpRo    H   res://.godot/imported/porkchop.png-62fe7a332bb0015412b7602636f772fb.ctex�5      .      ^�a1�,B�Uٰ���i       res://.godot/uid_cache.bin  �M      �      ��Ph���O�����;?�       res://apple.png.import  �       �       ��f��(M��2 �(+       res://apple.tscn.remap   G      b       Z�7�E,��C�~b@V       res://axe.gd            ������C��^��w�       res://axe.png.import�      �       �X�v�L�v���pN       res://axe.tscn.remap�G      `       ��f��f�Z޾ۥ9+       res://explosion.png.import  �      �        �%��Ύ���rdF�V�    $   res://explosion_effect.tscn.remap   �G      m       ��bѝ��ҫ���u�       res://icon.svg  �I      �      C��=U���^Qu��U3       res://icon.svg.import   �$      �       }]ۙ<����޽pbN       res://pig.png.import�&      �       }�KD�����%a       res://piggy.gd  �'      �      ���u�3Z�HeM       res://piggy.tscn.remap  `H      b       ��C���uG�;�Z       res://porkchop.png.import   �6      �       �;�j�G�@l�/3       res://porkchop.tscn.remap   �H      e       #6¹j5�~��>X�       res://project.binary`O      �      �;e�;�Xh;��\�H       res://world.gd  �>      �      l�bmwU�H׃�}�       res://world.tscn.remap  @I      b       �t�׵B�}��6�x     ��c�.!�}�hGST2   
         ����               
         J   RIFFB   WEBPVP8L6   /	�0��?���5�$E�|9)j�p1г"�u""��a�T`c���񨎚F��@�qk���[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://7445mojnhh58"
path="res://.godot/imported/apple.png-53a5ba701c353857fc5b432b6c413138.ctex"
metadata={
"vram_texture": false
}
 �Ҷ��K{�c���*d�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled    
   Texture2D    res://apple.png �k�1��       local://CircleShape2D_osw40 T         local://PackedScene_mmycr ~         CircleShape2D            �@         PackedScene          	         names "         Apple    collision_layer    collision_mask    Area2D 	   Sprite2D    texture    CollisionShape2D    shape    	   variants                                              node_count             nodes        ��������       ����                                  ����                           ����                   conn_count              conns               node_paths              editable_instances              version             RSRC_�>�	�k��d��extends Area2D

@export var speed = 10;
@onready var piggy = $"../Piggy"

var PORKCHOP_SCENE = preload("res://porkchop.tscn");
var EXPLOSION_EFFECT_SCENE = preload("res://explosion_effect.tscn");

func _process(delta):
	position = position.move_toward(piggy.position, speed * delta);
	
	if position.x > piggy.position.x:
		scale.x = 1;
	else:
		scale.x = -1;

func _on_area_entered(area):
	var pigSize = area.scale;
	area.queue_free();
	queue_free();
	var world = get_tree().current_scene;
	
	var porkchop = PORKCHOP_SCENE.instantiate();
	world.add_child.call_deferred(porkchop);
	porkchop.scale = pigSize;
	porkchop.position = global_position;

	var explosion = EXPLOSION_EFFECT_SCENE.instantiate();
	world.add_child.call_deferred(explosion);
	explosion.global_position = global_position;
���Poi�n�GST2            ����                        Z   RIFFR   WEBPVP8LE   /�0��?�����m��
c�j~	��]������+�y�yM������?�\&W~�gĕ&ܰb bHQ���:#��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b07o7jhnokwxu"
path="res://.godot/imported/axe.png-4bc9ac444747047d74a0e175e1420d1e.ctex"
metadata={
"vram_texture": false
}
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://axe.gd ��������
   Texture2D    res://axe.png ��*|R5f:      local://RectangleShape2D_4lk26 w         local://PackedScene_bsyf3 �         RectangleShape2D       
      A  A         PackedScene          	         names "         Axe    collision_layer    script    Area2D 	   Sprite2D    texture    CollisionShape2D 	   position    shape    _on_area_entered    area_entered    	   variants                                
     @�   �                node_count             nodes        ��������       ����                                  ����                           ����                         conn_count             conns                
   	                    node_paths              editable_instances              version             RSRCg+yTL��\GST2   `         ����               `         �   RIFF�   WEBPVP8L�   /_�0��?��pW�m5�K����[�����)\��7H��"�m�:!"%�����dRQƼ��B�Lj�ע�B�Vj�7r� F �%�$[)`I ���Lyz�HN��b�[�X셐�G�|`!#2��J��_K��Th���y�&��
����6,���GSw[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://ci1wpmy5qip12"
path="res://.godot/imported/explosion.png-730076d88b39dbfd5c22ad71f1135b01.ctex"
metadata={
"vram_texture": false
}
 @���c�&RSRC                    PackedScene            ��������                                                  .    frame    resource_local_to_scene    resource_name    length 
   loop_mode    step    tracks/0/type    tracks/0/imported    tracks/0/enabled    tracks/0/path    tracks/0/interp    tracks/0/loop_wrap    tracks/0/keys    script    tracks/1/type    tracks/1/imported    tracks/1/enabled    tracks/1/path    tracks/1/interp    tracks/1/loop_wrap    tracks/1/keys    _data 	   _bundled    
   Texture2D    res://explosion.png K3I����J      local://Animation_bu63m �         local://Animation_babyb �         local://AnimationLibrary_borav          local://PackedScene_kfcft {      
   Animation 	         o�:         value           	         
                                                times !                transitions !        �?      values                    update             
   Animation             explode       ��?         value           	         
                                                times !          ���=��L>���>���>   ?      transitions !        �?  �?  �?  �?  �?  �?      values                                                  update                method                                                                  times !      ��?      transitions !        �?      values                   method ,      queue_free       args                 AnimationLibrary                   RESET                 explode                   PackedScene          	         names "         ExplosionEffect    texture    hframes 	   Sprite2D    AnimationPlayer 	   autoplay 
   libraries    	   variants                             explode                             node_count             nodes        ��������       ����                                  ����                         conn_count              conns               node_paths              editable_instances              version             RSRC.GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ �ԙm(�a9���[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bgv3m8svvejuy"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �BDkQZ�2Ni���(\GST2   `         ����               `         �   RIFF�   WEBPVP8L�   /_�0��?���7�$9J�|�5ka�Bښ�h�6j�lρ��FnۆQn�6{��d�(4� ��#�m�5��冪!e�>e�Q
�Z;��a��@������i�������h�NQ{��Y����Y4��JQ���@�dn#S��V0�>���������oސ��c��zY����K9�I}� OP?�	�� ��ǖ��o��X[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://r4b00td61kgl"
path="res://.godot/imported/pig.png-27c779637403e465d2e03317ab3cc4a3.ctex"
metadata={
"vram_texture": false
}
 cextends Area2D

@export var speed = 75;

@onready var animation_player = $AnimationPlayer;
@onready var sprite_2d = $Sprite2D;

var height = ProjectSettings.get_setting("display/window/size/viewport_height");
var width = ProjectSettings.get_setting("display/window/size/viewport_width");

signal apple_eaten;

func _process(delta):
	var input_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	if Input.is_action_pressed("move_by_mouse"):
		var target = get_local_mouse_position();
		target /= position;
		input_vector = target.normalized();
			
	if input_vector == Vector2.ZERO:
		animation_player.play("idle");
	else:
		animation_player.play("run");
		if input_vector.x != 0:
			sprite_2d.scale.x = sign(input_vector.x);
	position.x = clamp(position.x, 5, width - 5);
	position.y = clamp(position.y, 5, height - 5);
	position += input_vector * speed * delta;
	

func _on_area_entered(area):
	area.queue_free();
	apple_eaten.emit();
	scale *= 1.1;
	print("pig size: ", scale.x);
cnqeXf���<o�RSRC                    PackedScene            ��������                                               	   Sprite2D    frame    resource_local_to_scene    resource_name    length 
   loop_mode    step    tracks/0/type    tracks/0/imported    tracks/0/enabled    tracks/0/path    tracks/0/interp    tracks/0/loop_wrap    tracks/0/keys    script    _data    custom_solver_bias    radius    height 	   _bundled       Script    res://piggy.gd ��������
   Texture2D    res://pig.png _�ٛ54d      local://Animation_thqy5 �         local://Animation_lm50b �         local://Animation_tninw �         local://AnimationLibrary_2e4h0          local://CapsuleShape2D_bhf3c �         local://PackedScene_qqmjj �      
   Animation 	         o�:         value           	         
                                                times !                transitions !        �?      values                    update             
   Animation 	            idle          value           	         
                                                times !                transitions !        �?      values                    update             
   Animation             run       ���>                  value           	         
                                                times !          ���=��L>      transitions !        �?  �?  �?      values                                update                AnimationLibrary                   RESET                 idle                run                   CapsuleShape2D            �@        �A         PackedScene          	         names "         Piggy    z_index    collision_mask    script    Area2D 	   Sprite2D    texture    hframes    AnimationPlayer 
   libraries    CollisionShape2D 	   position 	   rotation    shape    _on_area_entered    area_entered    	   variants    	                                                              
         @@   ��?               node_count             nodes     .   ��������       ����                                        ����                                 ����   	                  
   
   ����                               conn_count             conns                                       node_paths              editable_instances              version             RSRCI�H�GST2   �         ����               �         �   RIFF�   WEBPVP8L�   /� 0��?���Ǒ$9ʠL�֬��ɵ���j3�g��|#���mۦ9�C2���fb����;���g`�7<ƙ�#7d��
 rC։s�|z\Nw�ܐwBNv�]�%V��X�9�M�KB��넜�F�tA�20#'��.v�l�����n��D+<3K>�.f�)78���
��vqO���9����l�dpY�v�����9D�"V��G���1��.=,r�K�?�e[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cs06d3cxlhdyv"
path="res://.godot/imported/porkchop.png-62fe7a332bb0015412b7602636f772fb.ctex"
metadata={
"vram_texture": false
}
 ���E\u�2RSRC                    PackedScene            ��������                                                  .    frame    resource_local_to_scene    resource_name    length 
   loop_mode    step    tracks/0/type    tracks/0/imported    tracks/0/enabled    tracks/0/path    tracks/0/interp    tracks/0/loop_wrap    tracks/0/keys    script    _data 	   _bundled    
   Texture2D    res://porkchop.png �L�h�T      local://Animation_mof1e H         local://Animation_se7i8 @         local://AnimationLibrary_bqqer �         local://PackedScene_oxg43 )      
   Animation 	         o�:         value           	         
                                                times !                transitions !        �?      values                    update             
   Animation             bounce       ƈ?      ���<         value           	         
                                                times !          ���=r�>��L>���>���>���>���>      transitions !        �?  �?  �?  �?  �?  �?  �?  �?      values                                                              update                AnimationLibrary                   RESET                 bounce                   PackedScene          	         names "      	   Porkchop    texture    hframes 	   Sprite2D    AnimationPlayer 	   autoplay 
   libraries    	   variants                    	         bounce                             node_count             nodes        ��������       ����                                  ����                         conn_count              conns               node_paths              editable_instances              version             RSRC������ dmgextends Node2D

const APPLE_SCENE = preload("res://apple.tscn");

@onready var piggy = $Piggy

var height = ProjectSettings.get_setting("display/window/size/viewport_height");
var width = ProjectSettings.get_setting("display/window/size/viewport_width");

func get_spawn_position():
	var pigX = piggy.position.x
	var pigY = piggy.position.y
	print("X ", pigX, "Y: ", pigY);
	var spawnY = randi_range(15, height - 15);
	var spawnX = randi_range(15, width - 15);
	return [spawnY, spawnX];

func _on_piggy_apple_eaten():
	var apple = APPLE_SCENE.instantiate();
	var world = get_tree().current_scene;
	world.add_child.call_deferred(apple);
	var spawn_position = get_spawn_position();
	apple.position.y = spawn_position[0];
	apple.position.x = spawn_position[1];
��Kn䙺WY+RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://world.gd ��������   PackedScene    res://piggy.tscn GZ5ڑ�   PackedScene    res://apple.tscn a�|��   PackedScene    res://axe.tscn �'en�g�=      local://PackedScene_dncd6 �         PackedScene          	         names "         World    script    Node2D 
   ColorRect    anchors_preset    anchor_right    anchor_bottom    offset_right    offset_bottom    grow_horizontal    grow_vertical    color    Piggy 	   position    Apple    Axe    _on_piggy_apple_eaten    apple_eaten    	   variants                            �?     �C     4C                       �?         
     KC  �B         
     2C  C         
     �C  �B      node_count             nodes     ;   ��������       ����                            ����                                 	      
                        ���                           ���   	         
               ���                         conn_count             conns                                      node_paths              editable_instances              version             RSRC[remap]

path="res://.godot/exported/133200997/export-7cadf0ec706f5a89c767029c0fc20706-apple.scn"
sO0j8_u^֘�[remap]

path="res://.godot/exported/133200997/export-4262c4b3aac32f7673e96f8022179ce1-axe.scn"
[remap]

path="res://.godot/exported/133200997/export-aefcc7c221d288f2f60f0d638c061a07-explosion_effect.scn"
���[remap]

path="res://.godot/exported/133200997/export-ba2cf031a81e3ad0f29102480bdc365a-piggy.scn"
��~t�y6��fe�r�[remap]

path="res://.godot/exported/133200997/export-12c1c9bf34e1ec0d2e3568d23d52dc95-porkchop.scn"
��ϱv�����[remap]

path="res://.godot/exported/133200997/export-76e0adcbc83681695885bae615f516ae-world.scn"
�Z[����8R�list=Array[Dictionary]([])
�uF_R<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
�8:Ӑ(��   +`g�'�j$   res://web/index.apple-touch-icon.png,p�[:"   res://web/index.icon.png���`   res://web/index.png�k�1��    res://apple.pnga�|��   res://apple.tscn��*|R5f:   res://axe.png�'en�g�=   res://axe.tscnK3I����J   res://explosion.png<�O��A*   res://explosion_effect.tscnt�؊钖'   res://icon.svg_�ٛ54d   res://pig.pngGZ5ڑ�   res://piggy.tscn�L�h�T   res://porkchop.png�I��r�(   res://porkchop.tscn4:ǂ�~   res://world.tscn�ECFG      application/config/name         1-bit Godot 4 Piggy    application/run/main_scene         res://world.tscn   application/config/features(   "         4.1    GL Compatibility       application/config/icon         res://icon.svg  "   display/window/size/viewport_width      @  #   display/window/size/viewport_height      �   )   display/window/size/window_width_override         *   display/window/size/window_height_override      �     display/window/stretch/mode         canvas_items   input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_by_mouse�              events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask           position              global_position               factor       �?   button_index         canceled          pressed           double_click          script            deadzone      ?   layer_names/2d_physics/layer_1         piggy      layer_names/2d_physics/layer_2         apples     layer_names/2d_physics/layer_3         axe 9   rendering/textures/canvas_textures/default_texture_filter          #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility