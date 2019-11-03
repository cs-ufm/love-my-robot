# Love My Robot (LMR) Pseudo Code

Habra categorias de comandos en LMR:

## [Actions](http://cozmosdk.anki.com/docs/generated/cozmo.action.html):
- Say Text
- picking up an object
- etc


```bash
SAY "Hello"

# Math functions ;)
# Cozmo will SAY the result of the operation
MATH "1+2"
MATH "3-1"
MATH "(5/2) * 4"

# COUNT
# Cozmo will count saying the numbers from 1 to NUMBER
COUNT 10

# YES
# Cozmo is very optimistic so he only can say YES with his head.
YES


# SOUND
# play only 1 sound from cozmo.audio.AudioEvents, choose one sound that will identify your Cozmo, for example it will Play 'MusicTinyOrchestraInit'

SOUND

```

<br>

>  "Actions encapsulate specific high-level tasks that the Cozmo robot can perform. They have a definite beginning and end. These tasks include picking up an object, saying text, [math](https://stackoverflow.com/questions/9685946/math-operations-from-string) etc."

<br>

---
## Drive:
- `drive Xmm at Ymm/s`
- `turn 90deg at 100 deg/s`
- `drive -Xmm at Ymm/s`
- `lift`

```bash

# DRIVE_OFF [drive_off_charger_contacts]
# Tells Cozmo to drive forward slightly to get off the charger contacts.
DRIVE_OFF


# MOVE_FUNCS (amount, velocity) [drive_straight]
# amount: milimteres (mm) | velocity: milimiters/sec (mm/s)
# amount > 0 forward; amount < 0 backwards
# if no velocity provided move at a default velocity
MOVE 150 50
# move 100 mm backwards at 50 mm/s
MOVE -100 50

# TURN (amount, velocity) [turn_in_place]
# amount: degrees (deg) | velocity: degrees/sec (deg/s)
# amount > 0 clockwise; amount < 0 anticlockwise
# if no velocity provided move at a default velocity
TURN 90 100


# LIFT (height)
# height: percentage 0.0 (botton) to 1.0 (top)
LIFT 0.8


```


---
## Animations:
- [Lights](http://cozmosdk.anki.com/docs/generated/cozmo.lights.html)
- [Playing Animation](http://cozmosdk.anki.com/docs/generated/cozmo.anim.html#)
  - Sleep
  - Smile, etc
  - World Cubes

```bash

# turn on Cozmo's backpack light some color (red, green, blue, white, off) [set_all_backpack_lights]
LIGHT RED
LIGHT BLUE
LIGHT OFF

# Play an animation from [Triggers](http://cozmosdk.anki.com/docs/generated/cozmo.anim.html#cozmo.anim.Triggers) [play_anim_trigger], beware you might need to limit the list of Trigger Names (Happy, Sad,, etc ); There are 574 Triggers so limit it to 5 at least.

ANIMATION CubePounceLoseSession

# Cubes animations
CUBE1_LIGHT RED
CUBE2_LIGHT BLUE
CUBE3_LIGHT GREEN

# PICKUP (CUBE id) [pickup_object]
# Tells Cozmo to pickup a cube (1 to 3)
PICKUP 3

# DROP [place_object_on_ground_here]
# Ask Cozmo to place the object he is carrying on the ground at the current location.
DROP

# ROLL_CUBE (CUBE id) [roll_cube]
# will roll a specified cube (1 to 3)
# Roll 1st cube

ROLL_CUBE 1

# WHEELIE [pop_a_wheelie]
# perform a wheelie using a cube

WHEELIE 2




```


---
