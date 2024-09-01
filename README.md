# NATO Speaker

Download self contained (single file) shell script: [nato.sh](https://github.com/aioobe/nato-speaker/releases/download/1.0/nato.sh)

## Description
`nato.sh` is a script that reads characters from standard input and plays them out loud through the speakers according to the NATO phonetic alphabet ("alpha, bravo, charlie, ...").

## Example

```
echo -n "Hello world!" | ./nato.sh
```

Plays [the following](demo.ogg) in the speakers:

[demo.webm](https://github.com/user-attachments/assets/79a98100-16b9-455f-85b9-18f4a6d05ff8)

```
Capital hotel
echo
lima
lima
oscar
space
whiskey
oscar
romeo
lima
delta
exclamation mark
```


## Supported characters

```
a b c d e f g h i j k l m n o p q r s t u v w x y z
A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
0 1 2 3 4 5 6 7 8 9
! " # % & ' ( ) * + , - . / : ;
< = > ? @ [ \ ] ^ _ ` { | } ~ $
<newline> <tab> <space>
```
