질문은 로갤에다 하자 

<strong>웹죽 사용법1</strong><br>
edit rc를 누른다.

{


function ready() <br>
EvolutionTile()  <br>
end

}

를 복사한다.

그 밑에 
evtile.lua의 내용을 복사한다.
복사할때 <와 >로 스크립트 영역을 지정하는 것을 잊지말자!<br>

<strong>웹죽사용법2</strong><br>
새로운 아이디를 만든다.<br>
웹죽사용법1의 과정을 수행한다.<br>
자신의 원래 아이디의 rc를 연다.<br>
include += 새로운아이디.rc를 쓴다.<br>

<strong>다운죽사용법</strong> <br>
zip으로 다운로드해서 evtile.lua를 setting폴더안에 넣는다.<br>
setting폴더안에 init.txt파일을 연다. <br>

{

<br>
function ready() <br>
EvolutionTile() <br>
end 

}

를 써넣고<br>
밑줄에 lua_file = evtile.lua 를 붙여넣는다.<br>

<strong>공통사항 on/off 키 만들기</strong><br>
게임을 실행한다.<br>
control+d나 ~키를 눌러 매크로를 실행한다.<br>
m 을 누르면 원하는 키를 고른다.<br>
내용을 입력하라고 하면 ===toggle을 입력한다.<br>
이제 해당 키를 누를때마다 켜고 꺼진다.<br>


<strong>자신만의 설정대로 수정하고 싶을때</strong>

local min_level = 6 <br>

타일이 변하는 최소레벨. 해당 레벨 이상이 되기전까진<br>


종족별타일을 쓰고 이 레벨부터 원하는 타일로 변경된다.<br>


<strong>data()</strong>
race["Centaur"][m] = {[6]="tile:MONS_CENTAUR_WARRIOR_MELEE",[10]="nessos"}
race["Centaur"][w] = {[6]="tile:MONS_CENTAUR_WARRIOR_MELEE",[10]="nessos"}

이 내용은 6레벨때 센타워리어 타일 10레벨때 네소스 타일을 쓴다는 뜻

m은 법사형 w는 전사형이다

원하는 레벨 = 괄호안 숫자

원하는 타일 = ""안 내용

예로들어
race["Centaur"][m] = {[6]="tile:MONS_CENTAUR_WARRIOR_MELEE",[8]="ijyb"}

로 바꾸면 8레벨에 이지브로 바꿔진다.


주의할점 : "tile_player_tile =mons:타일이름"으로 작동되어야 한다.

tile:mons_어쩌고로 작동되는 타일이라면 센타워리어타일처럼 tile:타일이름으로 적어야한다.

설정된 최소레벨에 주의하자.

예로들어 최소레벨이 6인데 [5]="ijyb"를 추가햇다면 적용되지 않는다.


<strong>checkbg()</strong>


현재 마법스킬과 은신의 총합(발동,기도술제외)이 전투관련스킬보다 크면 법사형으로 판단되게 설정했다.

해당사항이 맘에들지 않는다면 magus나 warrior에 들어갈 스킬목록을 조정하면 된다.

<Strong>메시지</strong>

crawl.mpr() 의 내용을 원하는대로 수정하면된다.

