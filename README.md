질문은 로갤에다 하자 

<strong>웹죽 사용법1</strong><br>
edit rc를 누른다.

< <br>
function ready() <br>
EvolutionTile()  <br>
end>

를 복사한다.

그 밑에 
evtile.lua의 내용을 복사한다.
복사할때 <와 >로 스크립트 영역을 지정하는 것을 잊지말자!<br>

<strong>웹죽사용법2</strong><br>
새로운 아이디를 만든다.<br>
웹죽사용법1의 과정을 수행한다.<br>
자신의 원래 아이디의 rc를 연다.<br>
include += 새로운아이디.rc를 쓴다.<br>

<strong>다운죽</strong> 사용법
zip으로 다운로드해서 evtile.lua를 setting폴더안에 넣는다.
setting폴더안에 init.txt파일을 연다. <br>

< <br>
function ready() <br>
EvolutionTile() <br>
end >

를 써넣고<br>
밑줄에 lua_file = evtile.lua 를 붙여넣는다.<br>

<strong>공통사항 on/off 키 만들기</strong><br>
게임을 실행한다.<br>
control+d나 ~키를 눌러 매크로를 실행한다.<br>
m 을 누르면 원하는 키를 고른다.<br>
내용을 입력하라고 하면 ===toggle을 입력한다.<br>
이제 해당 키를 누를때마다 켜고 꺼진다.<br>

