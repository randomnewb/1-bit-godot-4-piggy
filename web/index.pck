GDPC                 �                                                                      (   \   res://.godot/exported/133200997/export-06bcd55d546b9bb724656ddb65c9784c-LabelSettings.res    2      �      	s��+!����M�{    T   res://.godot/exported/133200997/export-12c1c9bf34e1ec0d2e3568d23d52dc95-porkchop.scn�T      		      �P{�aq�%A#��Y�    P   res://.godot/exported/133200997/export-4262c4b3aac32f7673e96f8022179ce1-axe.scn �	      U      ��!Zt��e�ѱ�^�    T   res://.godot/exported/133200997/export-76e0adcbc83681695885bae615f516ae-world.scn   `m      5      ���'eϺj�@v4��s    T   res://.godot/exported/133200997/export-7cadf0ec706f5a89c767029c0fc20706-apple.scn   `      �      lc^�&�*	�`AD    \   res://.godot/exported/133200997/export-aefcc7c221d288f2f60f0d638c061a07-explosion_effect.scn�      �      ҮxMuD�y��
H�Z    T   res://.godot/exported/133200997/export-ba2cf031a81e3ad0f29102480bdc365a-piggy.scn   @:      
      ����?^��sx�    P   res://.godot/exported/133200997/export-f4cf891e5f7a93b93d9b27cfb8401ccb-hud.scn �      ~	      ǰRW���K�~�|�    ,   res://.godot/global_script_class_cache.cfg   u             ��Р�8���8~$}P�    H   res://.godot/imported/apple.png-53a5ba701c353857fc5b432b6c413138.ctex           �       ��p��r'���`C��    D   res://.godot/imported/axe.png-4bc9ac444747047d74a0e175e1420d1e.ctex `      �       ��]�3�h�`�U�    L   res://.godot/imported/explosion.png-730076d88b39dbfd5c22ad71f1135b01.ctex          �       �f;^�0��򙂞@�S7    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexP$      �      �̛�*$q�*�́     D   res://.godot/imported/pig.png-27c779637403e465d2e03317ab3cc4a3.ctex �3            ��|��:9�W�tpRo    P   res://.godot/imported/pixel_rpg.ttf-77014acbb7efb947b2eba0d419d57ff3.fontdata   PD      �      Zܢq;�i��f��	�p    H   res://.godot/imported/porkchop.png-62fe7a332bb0015412b7602636f772fb.ctex�R      .      ^�a1�,B�Uٰ���i       res://.godot/uid_cache.bin  �x      ,      yCL�yܿ'~��w        res://LabelSettings.tres.remap  @s      j       w��J��:��p�P�v       res://apple.png.import  �       �       ��f��(M��2 �(+       res://apple.tscn.remap  �q      b       Z�7�E,��C�~b@V       res://axe.gd       <      r�@2'�)��ޥ��       res://axe.png.import 	      �       �X�v�L�v���pN       res://axe.tscn.remapr      `       ��f��f�Z޾ۥ9+       res://explosion.png.import        �        �%��Ύ���rdF�V�    $   res://explosion_effect.tscn.remap   pr      m       ��bѝ��ҫ���u�       res://global.gd p             (q�mgl󗡜z\       res://hud.gd�      8      b�8����WE�DQ��       res://hud.tscn.remap�r      `       L�
�H��l�YB��       res://icon.svg   u      �      C��=U���^Qu��U3       res://icon.svg.import   01      �       }]ۙ<����޽pbN       res://pig.png.import�4      �       }�KD�����%a       res://piggy.gd  �5      �      �J���6Ү����?#       res://piggy.tscn.remap  �s      b       ��C���uG�;�Z       res://pixel_rpg.ttf.import  �Q      �       ��9A6��ۇ�J       res://porkchop.png.import   �S      �       �;�j�G�@l�/3       res://porkchop.tscn.remap    t      e       #6¹j5�~��>X�       res://project.binary{      +      �K��\]~�V��<�(       res://save_and_load.gd  �]            �zLn.��ŝ�7�       res://world.gd  �_      �      �Ԣ��9z&�>=#�       res://world.tscn.remap  �t      b       �t�׵B�}��6�x    �*�7GST2   
         ����               
         J   RIFFB   WEBPVP8L6   /	�0��?���5�$E�|9)j�p1г"�u""��a�T`c���񨎚W�\+o�}K>�*�K�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://7445mojnhh58"
path="res://.godot/imported/apple.png-53a5ba701c353857fc5b432b6c413138.ctex"
metadata={
"vram_texture": false
}
 1�@��gK3��U��RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled    
   Texture2D    res://apple.png �k�1��       local://CircleShape2D_osw40 T         local://PackedScene_373g1 ~         CircleShape2D            �@         PackedScene          	         names "   	      Apple    collision_layer    collision_mask 	   Entities    Area2D 	   Sprite2D    texture    CollisionShape2D    shape    	   variants                                              node_count             nodes        ��������       ����                                    ����                           ����                   conn_count              conns               node_paths              editable_instances              version             RSRC���B��`zextends Area2D

@export var speed = 10;
@onready var piggy = $"../Piggy"

var PORKCHOP_SCENE = preload("res://porkchop.tscn");
var EXPLOSION_EFFECT_SCENE = preload("res://explosion_effect.tscn");

signal gameover;

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
	
	gameover.emit();
�uGST2            ����                        Z   RIFFR   WEBPVP8LE   /�0��?�����m��
c�j~	��]������+�y�yM������?�\&W~�gĕ&ܰb ��f���]�HS��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b07o7jhnokwxu"
path="res://.godot/imported/axe.png-4bc9ac444747047d74a0e175e1420d1e.ctex"
metadata={
"vram_texture": false
}
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://axe.gd ��������
   Texture2D    res://axe.png ��*|R5f:      local://RectangleShape2D_4lk26 w         local://PackedScene_p2tw4 �         RectangleShape2D       
      A  A         PackedScene          	         names "         Axe    z_index    collision_layer    script 	   Entities    Area2D 	   Sprite2D    texture    CollisionShape2D 	   position    shape    _on_area_entered    area_entered    	   variants                                      
     @�   �                node_count             nodes     "   ��������       ����                                          ����                           ����   	      
                conn_count             conns                                       node_paths              editable_instances              version             RSRC��7�t隖GST2   `         ����               `         �   RIFF�   WEBPVP8L�   /_�0��?��pW�m5�K����[�����)\��7H��"�m�:!"%�����dRQƼ��B�Lj�ע�B�Vj�7r� F �%�$[)`I ���Lyz�HN��b�[�X셐�G�|`!#2��J��_K��Th���y�&��
ό��ѯ�T,ث[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://ci1wpmy5qip12"
path="res://.godot/imported/explosion.png-730076d88b39dbfd5c22ad71f1135b01.ctex"
metadata={
"vram_texture": false
}
 v�f鋟�t��RSRC                    PackedScene            ��������                                                  .    frame    resource_local_to_scene    resource_name    length 
   loop_mode    step    tracks/0/type    tracks/0/imported    tracks/0/enabled    tracks/0/path    tracks/0/interp    tracks/0/loop_wrap    tracks/0/keys    script    tracks/1/type    tracks/1/imported    tracks/1/enabled    tracks/1/path    tracks/1/interp    tracks/1/loop_wrap    tracks/1/keys    _data 	   _bundled    
   Texture2D    res://explosion.png K3I����J      local://Animation_bu63m �         local://Animation_babyb �         local://AnimationLibrary_borav          local://PackedScene_kfcft {      
   Animation 	         o�:         value           	         
                                                times !                transitions !        �?      values                    update             
   Animation             explode       ��?         value           	         
                                                times !          ���=��L>���>���>   ?      transitions !        �?  �?  �?  �?  �?  �?      values                                                  update                method                                                                  times !      ��?      transitions !        �?      values                   method ,      queue_free       args                 AnimationLibrary                   RESET                 explode                   PackedScene          	         names "         ExplosionEffect    texture    hframes 	   Sprite2D    AnimationPlayer 	   autoplay 
   libraries    	   variants                             explode                             node_count             nodes        ��������       ����                                  ����                         conn_count              conns               node_paths              editable_instances              version             RSRC�extends Node

var score = 0;
�eextends CanvasLayer

@onready var start_button = $Container/StartButton;
@onready var highscore_time = $Container/HighScoreTime;
@onready var highscore_size = $Container/HighScoreSize;
@onready var elapsed_timer = $Container/ElapsedTimer


signal start_game;

func _on_start_button_pressed():
	start_button.hide()
	highscore_time.hide();
	highscore_size.hide();
	start_game.emit()
	var world = get_tree().current_scene;
	world.time = 0;
	world.size = 0;
	elapsed_timer.start();

func _on_score_timer_timeout():
	var world = get_tree().current_scene;
	world.time += 1;
!��Q�vRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://hud.gd ��������   LabelSettings    res://LabelSettings.tres ��u��;;	   FontFile    res://pixel_rpg.ttf U�a����+      local://PackedScene_epq2p h         PackedScene          	         names "   &      HUD    script    CanvasLayer 
   Container    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    size_flags_horizontal    size_flags_vertical    Control 
   TimeLabel    offset_top    offset_right    offset_bottom    text    label_settings    horizontal_alignment    vertical_alignment    Label 
   SizeLabel    Message    visible    HighScoreTime    HighScoreSize    StartButton    offset_left    theme_override_fonts/font $   theme_override_font_sizes/font_size    Button    ElapsedTimer    Timer    _on_start_button_pressed    pressed    _on_score_timer_timeout    timeout    	   variants                                  �?           �C     �A      Round Timer: 0                     C     4C      Size: 0             �A     XB   
   Game Over      \B     �B      Previous Best Time Alive: 0      �B     �B      Previous Best Size: 0      �B     �B     pC     C                     Restart       node_count    	         nodes     �   ��������       ����                            ����                                 	      
                             ����                                          	      	                    ����            
                              	      	                    ����	                                                	      	                    ����	                                                	      	                    ����	                                                	      	                    ����                                                              !       ����              conn_count             conns               #   "                     %   $                    node_paths              editable_instances              version             RSRC��GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ <4\�3���[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bgv3m8svvejuy"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �0��ŋ~%/{vY*�RSRC                    LabelSettings            ��������                                                  resource_local_to_scene    resource_name    line_spacing    font 
   font_size    font_color    outline_size    outline_color    shadow_size    shadow_color    shadow_offset    script    	   FontFile    res://pixel_rpg.ttf U�a����+      local://LabelSettings_0p45n �         LabelSettings                                RSRCGST2   `         ����               `         �   RIFF�   WEBPVP8L�   /_�0��?���7�$9J�|�5ka�Bښ�h�6j�lρ��FnۆQn�6{��d�(4� ��#�m�5��冪!e�>e�Q
�Z;��a��@������i�������h�NQ{��Y����Y4��JQ���@�dn#S��V0�>���������oސ��c��zY����K9�I}� OP?�	�� �||��+�ܻ�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://r4b00td61kgl"
path="res://.godot/imported/pig.png-27c779637403e465d2e03317ab3cc4a3.ctex"
metadata={
"vram_texture": false
}
 _extends Area2D

@export var speed = 75;

@onready var animation_player = $AnimationPlayer;
@onready var sprite_2d = $Sprite2D;

var height = ProjectSettings.get_setting("display/window/size/viewport_height");
var width = ProjectSettings.get_setting("display/window/size/viewport_width");

var last_clicked_position = null;
var clicked = false;

signal apple_eaten;

func _process(delta):
	var input_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	if Input.is_action_pressed("move_by_mouse"):
		clicked = true;
		last_clicked_position = get_local_mouse_position();
		var target = last_clicked_position;
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
	scale *= 1.05;
	var world = get_tree().current_scene;
	world.size = scale.x
�+�'�RSRC                    PackedScene            ��������                                               	   Sprite2D    frame    resource_local_to_scene    resource_name    length 
   loop_mode    step    tracks/0/type    tracks/0/imported    tracks/0/enabled    tracks/0/path    tracks/0/interp    tracks/0/loop_wrap    tracks/0/keys    script    _data    custom_solver_bias    radius    height 	   _bundled       Script    res://piggy.gd ��������
   Texture2D    res://pig.png _�ٛ54d      local://Animation_thqy5 �         local://Animation_lm50b �         local://Animation_tninw �         local://AnimationLibrary_2e4h0          local://CapsuleShape2D_bhf3c �         local://PackedScene_2rbyf �      
   Animation 	         o�:         value           	         
                                                times !                transitions !        �?      values                    update             
   Animation 	            idle          value           	         
                                                times !                transitions !        �?      values                    update             
   Animation             run       ���>                  value           	         
                                                times !          ���=��L>      transitions !        �?  �?  �?      values                                update                AnimationLibrary                   RESET                 idle                run                   CapsuleShape2D            �@        �A         PackedScene          	         names "         Piggy    z_index    collision_mask    script 	   Entities    Area2D 	   Sprite2D    texture    hframes    AnimationPlayer 
   libraries    CollisionShape2D 	   position 	   rotation    shape    _on_area_entered    area_entered    	   variants    	                                                              
         @@   ��?               node_count             nodes     /   ��������       ����                                          ����                           	   	   ����   
                        ����                               conn_count             conns                                       node_paths              editable_instances              version             RSRC�&�RSCC      �  �  �  (�/�` �> �]�K���!v�O��u�F��;B �/�U"Goʍ����=Ѭ��rjs�P)Y%Ekn�b�b	����6B�M�ٚ�2)M+��e�]����K�X�ђ�r��{u���b���W�׫z�eӾ�p�U����wMU֧����nU��'�0�s�/�>�X�����b�������*����T��Q���z_�]v��T�;��Rm��R^�a+8M��w,ܧ\՗�r0/�vV���Uc�ͥ��N�p�v�Uw+�T��7ݗ�Y���m�b{RT��ָ����S��Z������� ?岰ʶ*����<�Sy=���X�u�O����X�u���|w�
�o�����i_}T/�}�?��c����e�b�}����������?���nz��y����υ���W����1��sѥ��m����c��<�V�M��o�(�������u9Fq���GԤ���a�nRDP'P����#<L1�����˨���/�w|�J�a��AK�����I���������X��j����˒9'�����H�Ag�N��E��׃�)��������b�������n�驼��;�o��������/�i���������c�� �����o�6=L�����ߠ���ܔFs��;q����ђ�h�~"�{��0�a��'�.um�L%T��S���Ï�8=%��2��d�6��(���%z�^��dF�㐐y�/����*�(�˃�%�k!
~|����gpep!�p\^ZMZAZ7Z*Z&ZP-�NK�He,2�c��b\uF2�Q��C�!�D'�H|1Jx$��saS����i�:
\ �bx��_q\�;q�?ײ�l����
�h��-E#�A����Y��I������N�8l�Ґ�(<Mp�B��R�AJI��Ȉ� �Y��!BAfY����;:d�%�Ʀ&  WkCP������������ԇ�L�z?♾�`��o
�ߘ�<�Y�=ϰ#T�|�Q��ե�m��m�a���!'Om{Y�!ui�&�k䞑��s���'���ܳ]r>#O���5�f��5�4�M,y����_ű���:���7��?��3��z�}���3I��5e�0����'j�]��&�8���m�п~�߲�F�ں�&:�M�8}�%���H=;QS�<Q!]ꚶ�2�D�~�a�4��gF��g���'�g���z���Co>�o0��~�Ӳ�7i��$��DM�$MT��Q\���Y3N�tyj������<�r�a���2Ȍ̈�H����q�Q�Ck=��9f�B�fHA�()�B�2� coY2�d���_8� }%��|��ڑ����x �8܌�޿����/�)�����,3�u�~��Zv��4^���q��#�i�R��n��Ui�*��КS{����S6Rh�]��!Ux�u���S�}�&d����2|MP���t��v{�&S�0��܊�����P����|{�g�
�Eo�ޖG��S2�����K���Q������� ��3�u�|9TSb�쌧����_������-t����C}{SRz�d<PS��yJ�e�h�YR�vM9:q��׿�v�/r)A��y���k��j�q,��AH���2�J+�[ٞ��Q�Z��_t�/H�κ��Rdi�ot^-�S`��b�(�}߱�;y�����8��?nX��I�|O�b�|H~�=m�h��j`9��$���}7��c���eʀ�M��
��gB�J��L4��Q�j�@���8�Sj��%W</w�����.�9����A�'�E�R,_���:�02�����t/�?�������qh�&�������Y��>6J?9y2�' �S��IZڕ'a�d=/��Sނ&T3�|!X,�a�/��=��+O���rH_�I�L��)C����y,�15�����a�&'�I<�a%.n[P�����1�2 ����M^1�T�c��v(�/�`�}, 6w�G�(����כm�kx�C��g�g�9!�h��1��U2k�J`F�O���#�A�
_�{jj<�W���2� � �  Y��NZ7\xB��H�����):6ir�U���n�W?]��fW�G��4)���`���ܱ���[h�X2���]%ͽ�?ΐVp�#���T��+ȍ�(n��-���6�)��a�]��N?Z�ۥ^���\�/��a.�V�z��:C��������(�,W�ޑ?oc���n6vƑr% ���zs�J��݄��U[�GN�q��'�;��uu�u�؜�����U{�����Sgn#����T媶���I����Һ��+7�P�V�4�I�vR.���x�՜R�8��?o6O��$���Y!�g w�y{._�i���}�I��L02f212؛�LN��mfϖ9fٰ��c��Z�Z>�4�n��?q���XX-�3֟���]�̺5�e�x6�gd^d+fb^d/h~f���˲_L�Ȗ����ǥ7Ox�8d���[��l�����Y��Z.-�ht@X�HV������(�����Y�M��*�:|ܨ��o��]>�ڧ�}3������&.1�c�~�1k��e���0�^Y��V���+�����O����0�;��^p�
N���Lri�#�.0���-��"��k��5CS""��$�����|@�Y�D%sJHAR�T�5R�6�?c���Ceks�W���_�ڈ��Q'��iz��K�v��a�
(Y���k�_�K���M�r�}�0p��FM8�S�Z��ѡ��d��1���W��a.�T}��.4�pzr[�<���γZ��ALf�NF������M;��q�DO=��vG�f���^M��w��ZO��.���>��s���5�`�4[X�@au�Y���.Su$��s3H���.����eveJ���z�7�W�oo~ �o�VQ�L����1n�z"gx�4�'��鰊�c��l<�bj�^:?��U�+cz�i�s��3�
�[�妯�X��vz_�D[6�&����v���M��0�wVlE���Mz�"�9�
l�U���R[�q��پ�?��$ᨤa�.7����~��0�!�%��*����Cv���P��Uq�T�WIG���9�2d��3Cq��	eH\��8j�ƈ&f��	]R���;�|�l�#��}#� ��jե����s�Yc{un�@*��c�殇��R�'Bb��i''��Pqm��+r��j��I���iJi�m�L�O��C��A_��u�/E�_M�`��g  �S03қ��ak���.�� Y�A��p�@v���A��iﵷ1��B@7�@�X�IU&ϥK_�?�9;�}�W�U��9-P
L �r c�����;��V���x*�RSCC�S��n��[remap]

importer="font_data_dynamic"
type="FontFile"
uid="uid://bkx7kxdmwwe8t"
path="res://.godot/imported/pixel_rpg.ttf-77014acbb7efb947b2eba0d419d57ff3.fontdata"
 �-f}	�@TGST2   �         ����               �         �   RIFF�   WEBPVP8L�   /� 0��?���Ǒ$9ʠL�֬��ɵ���j3�g��|#���mۦ9�C2���fb����;���g`�7<ƙ�#7d��
 rC։s�|z\Nw�ܐwBNv�]�%V��X�9�M�KB��넜�F�tA�20#'��.v�l�����n��D+<3K>�.f�)78���
��vqO���9����l�dpY�v�����9D�"V��G���1��.=,r�K�?	�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cs06d3cxlhdyv"
path="res://.godot/imported/porkchop.png-62fe7a332bb0015412b7602636f772fb.ctex"
metadata={
"vram_texture": false
}
 �Z��n�O}xARSRC                    PackedScene            ��������                                                  ..    .    frame 	   Sprite2D    resource_local_to_scene    resource_name    length 
   loop_mode    step    tracks/0/type    tracks/0/imported    tracks/0/enabled    tracks/0/path    tracks/0/interp    tracks/0/loop_wrap    tracks/0/keys    tracks/1/type    tracks/1/imported    tracks/1/enabled    tracks/1/path    tracks/1/interp    tracks/1/loop_wrap    tracks/1/keys    script    _data 	   _bundled    
   Texture2D    res://porkchop.png �L�h�T      local://Animation_mof1e �         local://Animation_vgiql �         local://AnimationLibrary_bqqer =         local://PackedScene_0l3og �      
   Animation          o�:	         value 
                                                                  times !                transitions !        �?      values                    update                value                                                                   times !                transitions !        �?      values                    update             
   Animation 
            bounce       fff?	         value 
                                                                  times !   	       ���=��L>���>���>   ?��?333?��L?      transitions !   	     �?  �?  �?  �?  �?  �?  �?  �?  �?      values    	                                                                update                AnimationLibrary                   RESET                 bounce                   PackedScene          	         names "   
   	   Porkchop 	   Entities    Node2D 	   Sprite2D    texture    hframes    AnimationPlayer 
   root_node 	   autoplay 
   libraries    	   variants                    	                       bounce                             node_count             nodes         ��������       ����                        ����                                 ����               	                conn_count              conns               node_paths              editable_instances              version             RSRC�i;�VJextends Node

const SAVE_PATH = "user://save.cfg";

func save_highscore(best_time, best_size):
	var config = ConfigFile.new();
	config.set_value("Game", "Best Time", best_time);
	config.set_value("Game", "Size", best_size);
	config.save(SAVE_PATH);

func load_highscore():
	var best_time = 0;
	var best_size = 0;
	var config = ConfigFile.new();
	var error = config.load(SAVE_PATH);
	if error != OK: return null;
	best_time = config.get_value("Game", "Best Time")
	best_size = config.get_value("Game", "Size")
	return [best_time, best_size];
��extends Node2D

const APPLE_SCENE = preload("res://apple.tscn");
const PIGGY_SCENE = preload("res://piggy.tscn");
const AXE_SCENE = preload("res://axe.tscn")

@onready var gameover_message = $HUD/Container/Message;
@onready var start_button = $HUD/Container/StartButton;
@onready var time_label = $HUD/Container/TimeLabel;
@onready var size_label = $HUD/Container/SizeLabel;
@onready var highscore_time = $HUD/Container/HighScoreTime;
@onready var highscore_size = $HUD/Container/HighScoreSize
@onready var elapsed_timer = $HUD/Container/ElapsedTimer;

var height = ProjectSettings.get_setting("display/window/size/viewport_height");
var width = ProjectSettings.get_setting("display/window/size/viewport_width");
var corners = [[0,0],[width, height], [0, height], [width, 0]]

var time = 0 :
	get:
		return time;
	set(value):
		time = value;
		time_label.text = "Round Timer: " + str(time);

var size = 0 :
	get:
		return size;
	set(value):
		size = value;
		size_label.text = "Size: " + str(snapped(size, 0.01));
		

func _on_hud_start_game():
	for node in get_tree().get_nodes_in_group("Entities"):
		node.queue_free();
	gameover_message.hide();
	_on_piggy_apple_eaten();
	spawn_piggy();
	var axe_spawn = corners.pick_random();
	spawn_axe(axe_spawn[0], axe_spawn[1]);
	
func get_spawn_position():
	var spawnY = randi_range(15, height - 15);
	var spawnX = randi_range(15, width - 15);
	return [spawnY, spawnX];

func spawn_piggy():
	var piggy = PIGGY_SCENE.instantiate();
	var world = get_tree().current_scene;
	world.add_child.call_deferred(piggy);
	piggy.position.y = height / 2;
	piggy.position.x = width / 2;
	piggy.connect("apple_eaten", _on_piggy_apple_eaten);

func spawn_axe(positionX, positionY):
	var axe = AXE_SCENE.instantiate();
	var world = get_tree().current_scene;
	world.add_child.call_deferred(axe);
	axe.position.x = positionX;
	axe.position.y = positionY;
	axe.connect("gameover", _on_gameover);

func _on_piggy_apple_eaten():
	var apple = APPLE_SCENE.instantiate();
	var world = get_tree().current_scene;
	world.add_child.call_deferred(apple);
	var spawn_position = get_spawn_position();
	apple.position.y = spawn_position[0];
	apple.position.x = spawn_position[1];
	
func _on_gameover():
	var saved_information = SaveAndLoad.load_highscore()
	if saved_information != null:
		if (time <= saved_information[0] and size >= saved_information[1]) or (time >= saved_information[0] and size >= saved_information[1]):
			SaveAndLoad.save_highscore(time, size)
			highscore_time.text = "Previous Best Time Alive: " + str(time);
			highscore_size.text = "Previous Best Size: " + str(snapped(size,0.01));
	elif saved_information == null:
		SaveAndLoad.save_highscore(time, size);
		highscore_time.text = "Previous Best Time Alive: " + str(time);
		highscore_size.text = "Previous Best Size: " + str(snapped(size,0.01));
	else:
		SaveAndLoad.save_highscore(time, size);
		highscore_time.text = "Previous Best Time Alive: " + str(saved_information[0]);
		highscore_size.text = "Previous Best Size: " + str(snapped(saved_information[1],0.01));
	
	elapsed_timer.stop();
	await get_tree().create_timer(1.0).timeout;

	#highscore_time.text = "Previous Best Time Alive: " + str(saved_information[0]);
	#highscore_size.text = "Previous Best Size: " + str(snapped(saved_information[1],0.01));
	
	gameover_message.show();
	highscore_time.show();
	highscore_size.show();
	start_button.show()
	
	for node in get_tree().get_nodes_in_group("Entities"):
		node.queue_free();
RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://world.gd ��������   PackedScene    res://hud.tscn �Q��ȓ�y      local://PackedScene_vx0pp 1         PackedScene          	         names "         World    script    Node2D    HUD 
   ColorRect    anchors_preset    anchor_right    anchor_bottom    offset_right    offset_bottom    grow_horizontal    grow_vertical    color    _on_hud_start_game    start_game    	   variants                                     �?     �C     4C                       �?      node_count             nodes     '   ��������       ����                      ���                            ����                           	      
                            conn_count             conns                                      node_paths              editable_instances              version             RSRCb��x�4D��[remap]

path="res://.godot/exported/133200997/export-7cadf0ec706f5a89c767029c0fc20706-apple.scn"
�_�P��sip�*[remap]

path="res://.godot/exported/133200997/export-4262c4b3aac32f7673e96f8022179ce1-axe.scn"
[remap]

path="res://.godot/exported/133200997/export-aefcc7c221d288f2f60f0d638c061a07-explosion_effect.scn"
�PH[remap]

path="res://.godot/exported/133200997/export-f4cf891e5f7a93b93d9b27cfb8401ccb-hud.scn"
[remap]

path="res://.godot/exported/133200997/export-06bcd55d546b9bb724656ddb65c9784c-LabelSettings.res"
ä�O[remap]

path="res://.godot/exported/133200997/export-ba2cf031a81e3ad0f29102480bdc365a-piggy.scn"
�Nw�Ǒn�3BH[remap]

path="res://.godot/exported/133200997/export-12c1c9bf34e1ec0d2e3568d23d52dc95-porkchop.scn"
6�Iqg��[remap]

path="res://.godot/exported/133200997/export-76e0adcbc83681695885bae615f516ae-world.scn"
;]nS9i�`� u90�list=Array[Dictionary]([])
bI�[[<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
a\3 |٤��   ��.$   res://web/index.apple-touch-icon.png��^����Z   res://web/index.icon.png6-��4�I   res://web/index.png�k�1��    res://apple.pnga�|��   res://apple.tscn��*|R5f:   res://axe.png�'en�g�=   res://axe.tscnK3I����J   res://explosion.png<�O��A*   res://explosion_effect.tscn�Q��ȓ�y   res://hud.tscnt�؊钖'   res://icon.svg��u��;;   res://LabelSettings.tres_�ٛ54d   res://pig.pngGZ5ڑ�   res://piggy.tscnU�a����+   res://pixel_rpg.ttf�L�h�T   res://porkchop.png�I��r�(   res://porkchop.tscn4:ǂ�~   res://world.tscng"��ECFG      application/config/name         1-bit Godot 4 Piggy    application/run/main_scene         res://world.tscn   application/config/features(   "         4.1    GL Compatibility       application/config/icon         res://icon.svg     autoload/Global         *res://global.gd   autoload/SaveAndLoad          *res://save_and_load.gd "   display/window/size/viewport_width      @  #   display/window/size/viewport_height      �   )   display/window/size/window_width_override         *   display/window/size/window_height_override      �     display/window/stretch/mode         canvas_items   input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_by_mouse�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask           position              global_position               factor       �?   button_index         canceled          pressed           double_click          script         layer_names/2d_physics/layer_1         piggy      layer_names/2d_physics/layer_2         apples     layer_names/2d_physics/layer_3         axe 9   rendering/textures/canvas_textures/default_texture_filter          #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility�k�