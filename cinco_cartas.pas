unit cinco_cartas;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Styles.Objects;

type
  TForm2 = class(TForm)
    info: TButton;
    settings: TButton;
    meaning: TButton;
    й: TButton;
    ц: TButton;
    у: TButton;
    к: TButton;
    е: TButton;
    н: TButton;
    г: TButton;
    ш: TButton;
    ф: TButton;
    ы: TButton;
    в: TButton;
    а: TButton;
    п: TButton;
    р: TButton;
    о: TButton;
    л: TButton;
    я: TButton;
    ч: TButton;
    с: TButton;
    м: TButton;
    и: TButton;
    т: TButton;
    ь: TButton;
    б: TButton;
    щ: TButton;
    з: TButton;
    х: TButton;
    ъ: TButton;
    д: TButton;
    ж: TButton;
    э: TButton;
    enter: TButton;
    ю: TButton;
    delete: TButton;
    ё: TButton;
    R11: TButton;
    R21: TButton;
    R41: TButton;
    R31: TButton;
    R61: TButton;
    R51: TButton;
    R12: TButton;
    R22: TButton;
    R42: TButton;
    R32: TButton;
    R62: TButton;
    R52: TButton;
    R13: TButton;
    R23: TButton;
    R43: TButton;
    R33: TButton;
    R63: TButton;
    R53: TButton;
    R14: TButton;
    R24: TButton;
    R44: TButton;
    R34: TButton;
    R64: TButton;
    R54: TButton;
    R15: TButton;
    R25: TButton;
    R45: TButton;
    R35: TButton;
    R65: TButton;
    R55: TButton;
    Label1: TLabel;
    Label2: TLabel;
    InfoLabel: TLabel;
    start: TButton;
    stats: TButton;
    procedure йClick(Sender: TObject);
    procedure цClick(Sender: TObject);
    procedure уClick(Sender: TObject);
    procedure кClick(Sender: TObject);
    procedure еClick(Sender: TObject);
    procedure нClick(Sender: TObject);
    procedure гClick(Sender: TObject);
    procedure шClick(Sender: TObject);
    procedure щClick(Sender: TObject);
    procedure зClick(Sender: TObject);
    procedure фClick(Sender: TObject);
    procedure ыClick(Sender: TObject);
    procedure вClick(Sender: TObject);
    procedure аClick(Sender: TObject);
    procedure пClick(Sender: TObject);
    procedure рClick(Sender: TObject);
    procedure оClick(Sender: TObject);
    procedure лClick(Sender: TObject);
    procedure дClick(Sender: TObject);
    procedure яClick(Sender: TObject);
    procedure чClick(Sender: TObject);
    procedure сClick(Sender: TObject);
    procedure мClick(Sender: TObject);
    procedure иClick(Sender: TObject);
    procedure тClick(Sender: TObject);
    procedure ьClick(Sender: TObject);
    procedure бClick(Sender: TObject);
    procedure юClick(Sender: TObject);
    procedure жClick(Sender: TObject);
    procedure ёClick(Sender: TObject);
    procedure хClick(Sender: TObject);
    procedure эClick(Sender: TObject);
    procedure ъClick(Sender: TObject);
    procedure deleteClick(Sender: TObject);
    procedure enterClick(Sender: TObject);
    procedure startClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure infoClick(Sender: TObject);


  private
    { Private declarations }
  public

  end;

var
  Form2: TForm2;

implementation

uses info;
{$R *.fmx}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

const voc: array [1..1550] of string [5]=('аббат','абзац','аборт','абрис',
'абхаз','аванс','аврал','автол','автор',
'агава','агент','адрес','адыги','азарт','аймак','актёр','актив','акула',
'акциз','акция','алеут','алиби','аллах','аллея','алмаз','алтын','алыча',
'амбар','амвон','амёба','ампир','анаша','ангар','ангел','анонс','анчар',
'аорта','апачи','арбуз','аргон','арена','арест','ариец','армия','артос',
'архар','архив','аршин','аскет','аспид','астма','астра','атака','атлас',
'атлет','аудит','афиша','ацтек','бабка','бабки','багет','багор','бадья',
'базар','базис','бакен','балет','балка','балык','банан','банда','банка',
'барак','баран','баржа','барий','барин','барка','барон','барыш','баски',
'басма','басни','басня','батон','батут','бахча','башня','бегун','бёдра',
'бедро','бейка','бекас','бекон','белка','белки','белок','бельё','беляк',
'беляш','берег','берет','бетон','бивни','бидон','бизон','билет','биржа',
'бирюк','бисер','битва','битки','битум','благо','бланк','блеск','блоха',
'блуза','блюдо','богач','божок','бойня','бокал','бомба','борец','боров',
'босяк','ботва','бочар','бочка','брань','брасс','брешь','бровь','бронь',
'броня','брошь','брюки','брюхо','бубен','бугор','будда','будка','будни',
'буква','букет','букле','булат','булка','бурав','буран','бурка','бурки',
'бурре','бурун','бурят','бутик','бутон','буфер','буфет','бухта','бытие',
'бычок','вагон','вакса','валёк','валик','валуй','валун','вальс','ванна',
'варан','варяг','ватин','вафля','вахта','вдова','ведро','велюр','венгр',
'венец','веник','вепрь','верба','верфь','весна','весть','ветвь','ветер',
'ветка','вечер','вздор','взлёт','взнос','взрыв','визит','вилка','вилла',
'виола','вирус','вирши','виски','висок','виток','вихор','вихрь','вишня',
'вклад','влага','внуки','вобла','вогул','водка','вожак','вождь','возня',
'возок','война','волан','волна','волок','волос','волхв','ворон','ворот',
'вотум','время','всход','вуаль','въезд','выбор','вывих','вывод','выгон',
'выдох','выдра','выезд','вызов','выкуп','выпад','выпас','выход','вычет',
'вышка','вьюга','гавот','газон','гайка','галка','галоп','галун','гамак',
'гараж','гашиш','гелий','гений','герой','гетто','гидра','гиена','гипюр',
'глава','глина','глист','глубь','глушь','глыба','гниль','гобан','гобой',
'говор','гоист','голец','голод','гольф','гонка','гонор','гопак','горец',
'горка','горло','город','горох','гость','гофре','грант','грань','графа',
'греки','греча','грива','грипп','гроза','груда','грудь','грунт','груша',
'грыжа','гряда','грязи','грязь','гуашь','губка','гудок','гулаг','гуляш',
'гумно','гумус','гурия','гусар','гусли','гюрза','дамба','дверь','дебил',
'дебри','дебют','девиз','деизм','деист','декан','делец','демон','десна',
'дефис','джига','джинн','дзюдо','диван','диета','дилер','динго','дичок',
'длина','днище','добро','довод','догма','дождь','дозор','домна','домра',
'донос','доска','досуг','досье','доход','драже','драка','драма','дрель',
'дрова','дрожь','дрозд','дрофа','дрянь','дудка','думка','дупло','дурак',
'дуэль','дылда','дымка','дятел','евреи','егерь','егоза','ездок','ересь',
'жажда','жакет','жатва','жатка','желчь','жених','жердь','жерех','жесть',
'живот','жизнь','жилет','жильё','жираф','житие','жокей','жулик','забег',
'забор','завод','загиб','загон','задор','заказ','закат','закон','залив',
'залог','замок','замша','запад','запал','запах','запев','запой','запор',
'зарок','заряд','засов','затон','заход','зачёт','зачин','звено','зверь',
'зебра','зевок','земля','зерно','злаки','знамя','знать','зомби','иваси',
'ивняк','игрок','идеал','идиот','иерей','изгиб','излом','изъян','изюбр',
'икона','икота','ингуш','индюк','инжир','иприт','ирбис','искра','ислам',
'испуг','истец','исток','исход','иудеи','кабан','кагор','кадет','кадка',
'кадык','казак','казах','казна','казнь','какао','калан','калач','калий',
'камея','камин','камса','камыш','канал','канат','канва','канон','каноэ',
'канун','канюк','капля','капор','карел','карта','каска','касса','каста',
'катар','катер','каток','кашне','кашпо','каюта','кварц','квота','кегли',
'кельт','келья','кепка','кефир','кивер','кизил','киоск','кирка','кисет',
'кисея','киста','кисть','кичка','кишка','класс','клерк','клёст','клеть',
'клещи','клише','клоун','клуша','клюка','книга','князь','коала','кобза',
'кобра','ковёр','козёл','козни','койка','койот','кокос','колба','колея',
'колит','колос','колун','колье','кольт','комар','комик','комод','комок',
'конёк','конец','конка','конус','конюх','копир','копия','копна','копьё',
'коран','кореш','корка','корма','короб','корчи','коряк','косец','кости',
'кость','косяк','котёл','котик','кофта','кочан','кочка','кошка','кощей',
'кража','кредо','креол','крест','кровь','кроль','крона','кросс','кроха',
'круиз','крупа','круча','крыло','крыса','крыша','кубок','кудри','кузен',
'кузня','кузов','кукиш','кукла','кулак','кулёк','кулеш','кулик','кулич',
'кулон','культ','кумач','кумир','кумык','кумыс','купец','купля','купол',
'купон','курок','кусок','кутья','кухня','кучер','кхмер','кювет','лаваш',
'лавка','лавра','ладан','ладья','лайка','лакей','лампа','лапта','лапти',
'лапша','ларёк','ларец','ласка','лассо','латук','латыш','лафет','лафит',
'левый','легат','лежак','лейка','лемех','лемур','лента','лепет','леска',
'лесть','леший','лиана','ливер','лидер','ликёр','лилия','лиман','лимон',
'лимфа','линза','линия','лирик','литий','литьё','лихач','лицей','лобби',
'лобок','ловец','лодка','ложка','ложки','локон','лопух','лоток','лотос',
'лоция','лузга','лучок','лычки','люпин','лютик','лютня','ляжка','ляпис',
'магия','мажор','мазок','мазут','майка','майор','макет','малёк','малыш',
'маляр','манго','манеж','мания','манка','манок','манси','манто','манту',
'марал','марка','марля','маска','масло','масон','масса','матка','мафия',
'мачта','медик','медяк','мезга','мерин','месса','место','месть','месяц',
'метан','метил','метка','метла','метод','метро','мечта','мешок','мидия',
'минёр','минор','минус','мираж','миска','митра','мозги','мойва','мойка',
'мокша','молва','молот','монах','мопед','морда','мороз','моряк','мотив',
'моток','мотор','мохер','мочка','мошка','музей','мулла','муляж','мумиё',
'мусор','муфта','мымра','мышца','мэрия','мятеж','набег','набор','навар',
'навес','навоз','навык','наган','нагар','нажим','налёт','налим','налог',
'намаз','намёт','нанка','напор','народ','нарыв','наряд','наука','нахал',
'нация','начёс','наяда','невод','недуг','нерпа','нефть','нивхи','нимфа',
'нитка','нищий','ножка','номер','нонет','норка','норма','норов','носок',
'нотка','нужда','нырок','оазис','обвал','обжиг','обзор','обида','облик',
'обман','обмен','образ','обрез','оброк','обруч','обрыв','обряд','обувь',
'обуза','обход','объём','обыск','овощи','овраг','овчар','огонь','огрех',
'озеро','озноб','океан','окись','оклад','окоём','округ','оксид','октет',
'окунь','олень','олива','олимп','олифа','олово','ольха','омела','омлет',
'омуль','оникс','опала','опара','опека','опера','опись','опиум','опора',
'опрос','оптик','орган','орден','ордер','ореол','орлан','осада','осень',
'осётр','осина','особа','особь','осока','остов','отава','отвал','отвес',
'ответ','отвод','отгул','отдел','отдых','отель','отзыв','откос','отлив',
'отрог','отряд','отсек','отток','отход','отчёт','отчим','офорт','офшор',
'охота','очерк','очник','пакет','пакля','палас','палач','палец','палка',
'панда','панно','папка','парад','паром','парта','парус','парча','парша',
'паста','пасть','пасха','патер','пауза','пафос','пахта','пачка','пашня',
'певец','пекло','пемза','пенал','пенис','пенни','пепел','пепси','перёд',
'перец','перст','песец','пески','песнь','песня','песок','петля','петух',
'пешка','пиала','пикап','пикет','пилав','пилка','пилот','пирит','пирог',
'питон','питьё','пихта','пицца','пламя','пласт','плата','плато','плаха',
'племя','плеть','плечо','плита','плюха','побег','повар','повод','погон',
'подол','поезд','пожар','поиск','пойма','покой','покос','полип','полис',
'полка','полог','полоз','полюс','поляк','помёт','помои','понос','пончо',
'порез','порог','порох','порча','порыв','посев','посол','посох','поток',
'потоп','поход','почва','почёт','почка','почки','почта','поэма','права',
'право','праща','приём','принц','причт','приют','проба','проём','проза',
'просо','профи','прусс','прядь','пряжа','пряха','псарь','птица','пудра',
'пульс','пульт','пункт','пупок','пурга','пучок','пушка','пчела','пшено',
'пырей','пытка','пышка','пьеса','пятак','пятка','раджа','радий','радио',
'радон','разум','район','ралли','рамка','рампа','ранец','раунд','рафик',
'рахит','рация','рвота','ребро','ребус','регби','редис','редут','режим',
'резак','резец','резус','рейка','рельс','ремез','ремиз','рента','рифма',
'робот','рогач','рогоз','родео','родня','рожки','рожок','роман','рондо',
'ропот','рохля','рояль','ртуть','рубец','рубин','рубка','рубль','ружьё',
'рукав','рулет','румба','рупия','русак','русло','ручей','ручка','рыбак',
'рыбец','рывок','рыжик','рынок','рысак','рычаг','рэкет','рюмка','ряска',
'саами','сабля','саван','садок','сазан','сайда','сайка','сайра','салат',
'салки','салон','саман','самба','самбо','самец','самка','самум','санки',
'сапёр','сапог','сарай','саржа','сарыч','сатин','сатир','сауна','сахар',
'сачок','сброс','сбруя','свара','свеча','свита','свояк','связь','сглаз',
'сдача','сдвиг','сдоба','север','седло','седок','сезам','сезон','секач',
'секта','сёмга','семит','семья','сенат','сепия','серия','серна','сетка',
'сечка','силок','силос','синод','синяк','сироп','ситец','ситро','сифон',
'скала','сквер','скетч','скирд','склад','склеп','склон','скоба','скука',
'скула','скунс','слеза','слива','слизь','слово','слуга','слухи','слюда',
'слюна','смена','смерч','смесь','смола','смотр','смрад','смысл','сноха',
'собес','собор','совет','совка','совок','сойка','сокол','солея','солод',
'сонет','сопка','сопли','сосед','сосна','сосок','сосуд','спазм','спесь',
'спина','спирт','сплав','сплин','спорт','спрос','спрут','спуск','среда',
'ссора','ссуда','стадо','сталь','станс','старт','стать','ствол','стела',
'стена','степь','стиль','столб','столп','стопа','страх','стриж','строй',
'струп','струя','стужа','ступа','судак','судно','судок','судья','суета',
'сукно','сумка','сумма','сурик','сурок','сусло','сутки','суфле','сушка',
'сфера','сцена','съезд','сырок','сырьё','сыщик','сюжет','сюита','табак',
'табло','табор','табун','тавро','тайга','тайна','такса','такси','талер',
'талия','талон','тальк','танго','танец','тапёр','тапир','тапки','таран',
'тариф','татар','тафта','тахта','тварь','твист','театр','тезис','тёзка',
'текст','тёлка','тенёк','тенор','тепло','терем','тёрка','тесак','тесто',
'тесть','течка','типаж','тираж','тиран','тиски','титан','титул','ткань',
'товар','толки','толпа','толща','томат','тоник','тонна','тонус','топаз',
'топор','торги','торец','тоска','тотем','точка','трава','тракт','траст',
'трата','траур','треба','трест','трико','тропа','труба','трюмо','тулуп',
'тулья','туман','тумба','тунец','тупик','турка','турки','турне','туфли',
'тушка','тыква','тюбик','тюрки','тюфяк','тягло','тяжба','тяпка','убыль',
'уголь','угорь','удаль','удача','удэхэ','узбек','узник','уйгур','уклад',
'укроп','уксус','улика','улица','умник','упрёк','упырь','урина','усики',
'успех','устав','устой','уступ','устье','утиль','ухарь','ухват','учёба',
'ушник','ущерб','фагот','фазан','фазис','факир','фалда','фанта','фасад',
'фасон','фауна','фаянс','фенол','ферзь','ферма','феска','фетиш','физик',
'фикус','филин','фильм','финал','финиш','фиорд','фирма','фишка','фланг',
'флирт','флокс','флора','фляга','фокус','форма','форум','фраза','франк',
'франт','фреза','френч','фронт','фрукт','фугас','фужер','фуляр','фурия',
'фуэте','фюрер','хазар','хакас','халат','халва','хамса','ханжа','харчо',
'хвала','хворь','хвост','херес','химик','химия','хинин','хиппи','хмель',
'хобот','ходок','холка','холод','холст','хомяк','хорал','хорёк','хохол',
'хохот','хунта','хурал','хурма','хутор','цапля','цедра','цезий','центр',
'цикля','цинга','циник','цитра','цифра','цукат','чайка','чалма','чарка',
'часть','чашка','чёлка','чепец','червь','череп','честь','чехол','чешки',
'чешуя','чибис','число','чуваш','чугун','чукчи','чулан','чулки','чутьё',
'шабаш','шайба','шайка','шакал','шалаш','шалун','шаман','шапка','шасси',
'шатёр','шафер','шахта','шашка','шашки','шашни','шевро','шериф','ширма',
'шитьё','шифер','шифон','шишка','шкала','шквал','школа','шкура','шлейф',
'шляпа','шмель','шоссе','шофёр','шпага','шпала','шпана','шпиль','шпион',
'шпора','шприц','шрифт','штамп','штиль','штора','шторм','штраф','штрих',
'штука','штурм','штырь','шурин','шуруп','шутка','шхуна','щегол','щёлок',
'щенок','щётка','щипач','щиток','эвенк','эклер','экран','элита','эллин',
'эмаль','эпоха','эскиз','эстет','этика','этнос','эфиоп','юниор','юнкер',
'юноша','юрист','ябеда','ягода','ягуар','яичко','якорь','ямщик','ярлык',
'ясень','яства');

var row,s,check,otvet,colorstr: string [5];      // row - вводимая строка, check - оттгадываемое слово
    rc1, rc2, rc3, rc4, rc5: char;               // буквы, что пишутся в строки
    i,j,k,l,wins: integer;                       // разные счетчики
    a: array [1..1550] of string;                // массив всего словаря
    words: array [1..6] of string [5];           // массив со всеми ответами
    f: boolean;                                  // вводимое слово из словаря?
    ask,ques: array [1..5] of integer;           // ques - совпадения в отгадываем; ask - в ответном
    keys: array [1..33] of TButton;

procedure TForm2.FormCreate(Sender: TObject);
begin
  keys[1]:=а;
  keys[2]:=б;
  keys[3]:=в;
  keys[4]:=г;
  keys[5]:=д;
  keys[6]:=е;
  keys[7]:=ж;
  keys[8]:=з;
  keys[9]:=и;
  keys[10]:=й;
  keys[11]:=к;
  keys[12]:=л;
  keys[13]:=м;
  keys[14]:=н;
  keys[15]:=о;
  keys[16]:=п;
  keys[17]:=р;
  keys[18]:=с;
  keys[19]:=т;
  keys[20]:=у;
  keys[21]:=ф;
  keys[22]:=х;
  keys[23]:=ц;
  keys[24]:=ч;
  keys[25]:=ш;
  keys[26]:=щ;
  keys[27]:=ъ;
  keys[28]:=ы;
  keys[29]:=ь;
  keys[30]:=э;
  keys[31]:=ю;
  keys[32]:=я;
  keys[33]:=ё;
end;



procedure TForm2.infoClick(Sender: TObject);
var
 res:word;
begin
  // вызываем дочернюю форму
  infoForm.Show;

end;

procedure matches (s1,s2: string);

begin
  for i:=1 to 5 do                                // full match
  if (s1[i]=s2[i]) then begin
    ask[i]:=2;
    ques[i]:=2;
  end;
  i:=1;
  while i<6 do begin                              // match in the word
   j:=1;
   while (j<6) and (ques[i]=0) do begin
     if (s1[i]=s2[j]) and (ques[i]=0) and (ask[j]=0) then begin
       ask[j]:=1;
       ques[i]:=1;
      end;
      j:=j+1;
    end;
    i:=i+1
  end;
  for i := 1 to 5 do
    otvet:=otvet+inttostr(ask[i]);
end;

procedure TForm2.йClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='й';
      rc1:='й';
    end else
      if R12.Text='' then begin
//        R12.Text:='й';
        rc2:='й';
      end else
        if R13.Text='' then begin
          R13.Text:='й';
          rc3:='й';
        end else
          if R14.Text='' then begin
            R14.Text:='й';
            rc4:='й';
          end else
            if R15.Text='' then begin
              R15.Text:='й';
              rc5:='й';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='й';
      rc1:='й';
    end else
      if R22.Text='' then begin
        R22.Text:='й';
        rc2:='й';
      end else
        if R23.Text='' then begin
          R23.Text:='й';
          rc3:='й';
        end else
          if R24.Text='' then begin
            R24.Text:='й';
            rc4:='й';
          end else
            if R25.Text='' then begin
              R25.Text:='й';
              rc5:='й';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='й';
      rc1:='й';
    end else
      if R32.Text='' then begin
        R32.Text:='й';
        rc2:='й';
      end else
        if R33.Text='' then begin
          R33.Text:='й';
          rc3:='й';
        end else
          if R34.Text='' then begin
            R34.Text:='й';
            rc4:='й';
          end else
            if R35.Text='' then begin
              R35.Text:='й';
              rc5:='й';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='й';
      rc1:='й';
    end else
      if R42.Text='' then begin
        R42.Text:='й';
        rc2:='й';
      end else
        if R43.Text='' then begin
          R43.Text:='й';
          rc3:='й';
        end else
          if R44.Text='' then begin
            R44.Text:='й';
            rc4:='й';
          end else
            if R45.Text='' then begin
              R45.Text:='й';
              rc5:='й';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='й';
      rc1:='й';
    end else
      if R52.Text='' then begin
        R52.Text:='й';
        rc2:='й';
      end else
        if R53.Text='' then begin
          R53.Text:='й';
          rc3:='й';
        end else
          if R54.Text='' then begin
            R54.Text:='й';
            rc4:='й';
          end else
            if R55.Text='' then begin
              R55.Text:='й';
              rc5:='й';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='й';
      rc1:='й';
    end else
      if R62.Text='' then begin
        R62.Text:='й';
        rc2:='й';
      end else
        if R63.Text='' then begin
          R63.Text:='й';
          rc3:='й';
        end else
          if R64.Text='' then begin
            R64.Text:='й';
            rc4:='й';
          end else
            if R65.Text='' then begin
              R65.Text:='й';
              rc5:='й';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.цClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ц';
      rc1:='ц';
    end else
      if R12.Text='' then begin
        R12.Text:='ц';
        rc2:='ц';
      end else
        if R13.Text='' then begin
          R13.Text:='ц';
          rc3:='ц';
        end else
          if R14.Text='' then begin
            R14.Text:='ц';
            rc4:='ц';
          end else
            if R15.Text='' then begin
              R15.Text:='ц';
              rc5:='ц';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ц';
      rc1:='ц';
    end else
      if R22.Text='' then begin
        R22.Text:='ц';
        rc2:='ц';
      end else
        if R23.Text='' then begin
          R23.Text:='ц';
          rc3:='ц';
        end else
          if R24.Text='' then begin
            R24.Text:='ц';
            rc4:='ц';
          end else
            if R25.Text='' then begin
              R25.Text:='ц';
              rc5:='ц';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ц';
      rc1:='ц';
    end else
      if R32.Text='' then begin
        R32.Text:='ц';
        rc2:='ц';
      end else
        if R33.Text='' then begin
          R33.Text:='ц';
          rc3:='ц';
        end else
          if R34.Text='' then begin
            R34.Text:='ц';
            rc4:='ц';
          end else
            if R35.Text='' then begin
              R35.Text:='ц';
              rc5:='ц';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ц';
      rc1:='ц';
    end else
      if R42.Text='' then begin
        R42.Text:='ц';
        rc2:='ц';
      end else
        if R43.Text='' then begin
          R43.Text:='ц';
          rc3:='ц';
        end else
          if R44.Text='' then begin
            R44.Text:='ц';
            rc4:='ц';
          end else
            if R45.Text='' then begin
              R45.Text:='ц';
              rc5:='ц';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ц';
      rc1:='ц';
    end else
      if R52.Text='' then begin
        R52.Text:='ц';
        rc2:='ц';
      end else
        if R53.Text='' then begin
          R53.Text:='ц';
          rc3:='ц';
        end else
          if R54.Text='' then begin
            R54.Text:='ц';
            rc4:='ц';
          end else
            if R55.Text='' then begin
              R55.Text:='ц';
              rc5:='ц';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ц';
      rc1:='ц';
    end else
      if R62.Text='' then begin
        R62.Text:='ц';
        rc2:='ц';
      end else
        if R63.Text='' then begin
          R63.Text:='ц';
          rc3:='ц';
        end else
          if R64.Text='' then begin
            R64.Text:='ц';
            rc4:='ц';
          end else
            if R65.Text='' then begin
              R65.Text:='ц';
              rc5:='ц';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.уClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='у';
      rc1:='у';
    end else
      if R12.Text='' then begin
        R12.Text:='у';
        rc2:='у';
      end else
        if R13.Text='' then begin
          R13.Text:='у';
          rc3:='у';
        end else
          if R14.Text='' then begin
            R14.Text:='у';
            rc4:='у';
          end else
            if R15.Text='' then begin
              R15.Text:='у';
              rc5:='у';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='у';
      rc1:='у';
    end else
      if R22.Text='' then begin
        R22.Text:='у';
        rc2:='у';
      end else
        if R23.Text='' then begin
          R23.Text:='у';
          rc3:='у';
        end else
          if R24.Text='' then begin
            R24.Text:='у';
            rc4:='у';
          end else
            if R25.Text='' then begin
              R25.Text:='у';
              rc5:='у';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='у';
      rc1:='у';
    end else
      if R32.Text='' then begin
        R32.Text:='у';
        rc2:='у';
      end else
        if R33.Text='' then begin
          R33.Text:='у';
          rc3:='у';
        end else
          if R34.Text='' then begin
            R34.Text:='у';
            rc4:='у';
          end else
            if R35.Text='' then begin
              R35.Text:='у';
              rc5:='у';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='у';
      rc1:='у';
    end else
      if R42.Text='' then begin
        R42.Text:='у';
        rc2:='у';
      end else
        if R43.Text='' then begin
          R43.Text:='у';
          rc3:='у';
        end else
          if R44.Text='' then begin
            R44.Text:='у';
            rc4:='у';
          end else
            if R45.Text='' then begin
              R45.Text:='у';
              rc5:='у';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='у';
      rc1:='у';
    end else
      if R52.Text='' then begin
        R52.Text:='у';
        rc2:='у';
      end else
        if R53.Text='' then begin
          R53.Text:='у';
          rc3:='у';
        end else
          if R54.Text='' then begin
            R54.Text:='у';
            rc4:='у';
          end else
            if R55.Text='' then begin
              R55.Text:='у';
              rc5:='у';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='у';
      rc1:='у';
    end else
      if R62.Text='' then begin
        R62.Text:='у';
        rc2:='у';
      end else
        if R63.Text='' then begin
          R63.Text:='у';
          rc3:='у';
        end else
          if R64.Text='' then begin
            R64.Text:='у';
            rc4:='у';
          end else
            if R65.Text='' then begin
              R65.Text:='у';
              rc5:='у';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.кClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='к';
      rc1:='к';
    end else
      if R12.Text='' then begin
        R12.Text:='к';
        rc2:='к';
      end else
        if R13.Text='' then begin
          R13.Text:='к';
          rc3:='к';
        end else
          if R14.Text='' then begin
            R14.Text:='к';
            rc4:='к';
          end else
            if R15.Text='' then begin
              R15.Text:='к';
              rc5:='к';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='к';
      rc1:='к';
    end else
      if R22.Text='' then begin
        R22.Text:='к';
        rc2:='к';
      end else
        if R23.Text='' then begin
          R23.Text:='к';
          rc3:='к';
        end else
          if R24.Text='' then begin
            R24.Text:='к';
            rc4:='к';
          end else
            if R25.Text='' then begin
              R25.Text:='к';
              rc5:='к';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='к';
      rc1:='к';
    end else
      if R32.Text='' then begin
        R32.Text:='к';
        rc2:='к';
      end else
        if R33.Text='' then begin
          R33.Text:='к';
          rc3:='к';
        end else
          if R34.Text='' then begin
            R34.Text:='к';
            rc4:='к';
          end else
            if R35.Text='' then begin
              R35.Text:='к';
              rc5:='к';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='к';
      rc1:='к';
    end else
      if R42.Text='' then begin
        R42.Text:='к';
        rc2:='к';
      end else
        if R43.Text='' then begin
          R43.Text:='к';
          rc3:='к';
        end else
          if R44.Text='' then begin
            R44.Text:='к';
            rc4:='к';
          end else
            if R45.Text='' then begin
              R45.Text:='к';
              rc5:='к';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='к';
      rc1:='к';
    end else
      if R52.Text='' then begin
        R52.Text:='к';
        rc2:='к';
      end else
        if R53.Text='' then begin
          R53.Text:='к';
          rc3:='к';
        end else
          if R54.Text='' then begin
            R54.Text:='к';
            rc4:='к';
          end else
            if R55.Text='' then begin
              R55.Text:='к';
              rc5:='к';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='к';
      rc1:='к';
    end else
      if R62.Text='' then begin
        R62.Text:='к';
        rc2:='к';
      end else
        if R63.Text='' then begin
          R63.Text:='к';
          rc3:='к';
        end else
          if R64.Text='' then begin
            R64.Text:='к';
            rc4:='к';
          end else
            if R65.Text='' then begin
              R65.Text:='к';
              rc5:='к';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
 // Label1.Text:=row;
end;

procedure TForm2.еClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='е';
      rc1:='е';
    end else
      if R12.Text='' then begin
        R12.Text:='е';
        rc2:='е';
      end else
        if R13.Text='' then begin
          R13.Text:='е';
          rc3:='е';
        end else
          if R14.Text='' then begin
            R14.Text:='е';
            rc4:='е';
          end else
            if R15.Text='' then begin
              R15.Text:='е';
              rc5:='е';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='е';
      rc1:='е';
    end else
      if R22.Text='' then begin
        R22.Text:='е';
        rc2:='е';
      end else
        if R23.Text='' then begin
          R23.Text:='е';
          rc3:='е';
        end else
          if R24.Text='' then begin
            R24.Text:='е';
            rc4:='е';
          end else
            if R25.Text='' then begin
              R25.Text:='е';
              rc5:='е';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='е';
      rc1:='е';
    end else
      if R32.Text='' then begin
        R32.Text:='е';
        rc2:='е';
      end else
        if R33.Text='' then begin
          R33.Text:='е';
          rc3:='е';
        end else
          if R34.Text='' then begin
            R34.Text:='е';
            rc4:='е';
          end else
            if R35.Text='' then begin
              R35.Text:='е';
              rc5:='е';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='е';
      rc1:='е';
    end else
      if R42.Text='' then begin
        R42.Text:='е';
        rc2:='е';
      end else
        if R43.Text='' then begin
          R43.Text:='е';
          rc3:='е';
        end else
          if R44.Text='' then begin
            R44.Text:='е';
            rc4:='е';
          end else
            if R45.Text='' then begin
              R45.Text:='е';
              rc5:='е';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='е';
      rc1:='е';
    end else
      if R52.Text='' then begin
        R52.Text:='е';
        rc2:='е';
      end else
        if R53.Text='' then begin
          R53.Text:='е';
          rc3:='е';
        end else
          if R54.Text='' then begin
            R54.Text:='е';
            rc4:='е';
          end else
            if R55.Text='' then begin
              R55.Text:='е';
              rc5:='е';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='е';
      rc1:='е';
    end else
      if R62.Text='' then begin
        R62.Text:='е';
        rc2:='е';
      end else
        if R63.Text='' then begin
          R63.Text:='е';
          rc3:='е';
        end else
          if R64.Text='' then begin
            R64.Text:='е';
            rc4:='е';
          end else
            if R65.Text='' then begin
              R65.Text:='е';
              rc5:='е';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.нClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='н';
      rc1:='н';
    end else
      if R12.Text='' then begin
        R12.Text:='н';
        rc2:='н';
      end else
        if R13.Text='' then begin
          R13.Text:='н';
          rc3:='н';
        end else
          if R14.Text='' then begin
            R14.Text:='н';
            rc4:='н';
          end else
            if R15.Text='' then begin
              R15.Text:='н';
              rc5:='н';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='н';
      rc1:='н';
    end else
      if R22.Text='' then begin
        R22.Text:='н';
        rc2:='н';
      end else
        if R23.Text='' then begin
          R23.Text:='н';
          rc3:='н';
        end else
          if R24.Text='' then begin
            R24.Text:='н';
            rc4:='н';
          end else
            if R25.Text='' then begin
              R25.Text:='н';
              rc5:='н';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='н';
      rc1:='н';
    end else
      if R32.Text='' then begin
        R32.Text:='н';
        rc2:='н';
      end else
        if R33.Text='' then begin
          R33.Text:='н';
          rc3:='н';
        end else
          if R34.Text='' then begin
            R34.Text:='н';
            rc4:='н';
          end else
            if R35.Text='' then begin
              R35.Text:='н';
              rc5:='н';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='н';
      rc1:='н';
    end else
      if R42.Text='' then begin
        R42.Text:='н';
        rc2:='н';
      end else
        if R43.Text='' then begin
          R43.Text:='н';
          rc3:='н';
        end else
          if R44.Text='' then begin
            R44.Text:='н';
            rc4:='н';
          end else
            if R45.Text='' then begin
              R45.Text:='н';
              rc5:='н';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='н';
      rc1:='н';
    end else
      if R52.Text='' then begin
        R52.Text:='н';
        rc2:='н';
      end else
        if R53.Text='' then begin
          R53.Text:='н';
          rc3:='н';
        end else
          if R54.Text='' then begin
            R54.Text:='н';
            rc4:='н';
          end else
            if R55.Text='' then begin
              R55.Text:='н';
              rc5:='н';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='н';
      rc1:='н';
    end else
      if R62.Text='' then begin
        R62.Text:='н';
        rc2:='н';
      end else
        if R63.Text='' then begin
          R63.Text:='н';
          rc3:='н';
        end else
          if R64.Text='' then begin
            R64.Text:='н';
            rc4:='н';
          end else
            if R65.Text='' then begin
              R65.Text:='н';
              rc5:='н';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.гClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='г';
      rc1:='г';
    end else
      if R12.Text='' then begin
        R12.Text:='г';
        rc2:='г';
      end else
        if R13.Text='' then begin
          R13.Text:='г';
          rc3:='г';
        end else
          if R14.Text='' then begin
            R14.Text:='г';
            rc4:='г';
          end else
            if R15.Text='' then begin
              R15.Text:='г';
              rc5:='г';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='г';
      rc1:='г';
    end else
      if R22.Text='' then begin
        R22.Text:='г';
        rc2:='г';
      end else
        if R23.Text='' then begin
          R23.Text:='г';
          rc3:='г';
        end else
          if R24.Text='' then begin
            R24.Text:='г';
            rc4:='г';
          end else
            if R25.Text='' then begin
              R25.Text:='г';
              rc5:='г';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='г';
      rc1:='г';
    end else
      if R32.Text='' then begin
        R32.Text:='г';
        rc2:='г';
      end else
        if R33.Text='' then begin
          R33.Text:='г';
          rc3:='г';
        end else
          if R34.Text='' then begin
            R34.Text:='г';
            rc4:='г';
          end else
            if R35.Text='' then begin
              R35.Text:='г';
              rc5:='г';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='г';
      rc1:='г';
    end else
      if R42.Text='' then begin
        R42.Text:='г';
        rc2:='г';
      end else
        if R43.Text='' then begin
          R43.Text:='г';
          rc3:='г';
        end else
          if R44.Text='' then begin
            R44.Text:='г';
            rc4:='г';
          end else
            if R45.Text='' then begin
              R45.Text:='г';
              rc5:='г';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='г';
      rc1:='г';
    end else
      if R52.Text='' then begin
        R52.Text:='г';
        rc2:='г';
      end else
        if R53.Text='' then begin
          R53.Text:='г';
          rc3:='г';
        end else
          if R54.Text='' then begin
            R54.Text:='г';
            rc4:='г';
          end else
            if R55.Text='' then begin
              R55.Text:='г';
              rc5:='г';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='г';
      rc1:='г';
    end else
      if R62.Text='' then begin
        R62.Text:='г';
        rc2:='г';
      end else
        if R63.Text='' then begin
          R63.Text:='г';
          rc3:='г';
        end else
          if R64.Text='' then begin
            R64.Text:='г';
            rc4:='г';
          end else
            if R65.Text='' then begin
              R65.Text:='г';
              rc5:='г';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.шClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ш';
      rc1:='ш';
    end else
      if R12.Text='' then begin
        R12.Text:='ш';
        rc2:='ш';
      end else
        if R13.Text='' then begin
          R13.Text:='ш';
          rc3:='ш';
        end else
          if R14.Text='' then begin
            R14.Text:='ш';
            rc4:='ш';
          end else
            if R15.Text='' then begin
              R15.Text:='ш';
              rc5:='ш';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ш';
      rc1:='ш';
    end else
      if R22.Text='' then begin
        R22.Text:='ш';
        rc2:='ш';
      end else
        if R23.Text='' then begin
          R23.Text:='ш';
          rc3:='ш';
        end else
          if R24.Text='' then begin
            R24.Text:='ш';
            rc4:='ш';
          end else
            if R25.Text='' then begin
              R25.Text:='ш';
              rc5:='ш';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ш';
      rc1:='ш';
    end else
      if R32.Text='' then begin
        R32.Text:='ш';
        rc2:='ш';
      end else
        if R33.Text='' then begin
          R33.Text:='ш';
          rc3:='ш';
        end else
          if R34.Text='' then begin
            R34.Text:='ш';
            rc4:='ш';
          end else
            if R35.Text='' then begin
              R35.Text:='ш';
              rc5:='ш';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ш';
      rc1:='ш';
    end else
      if R42.Text='' then begin
        R42.Text:='ш';
        rc2:='ш';
      end else
        if R43.Text='' then begin
          R43.Text:='ш';
          rc3:='ш';
        end else
          if R44.Text='' then begin
            R44.Text:='ш';
            rc4:='ш';
          end else
            if R45.Text='' then begin
              R45.Text:='ш';
              rc5:='ш';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ш';
      rc1:='ш';
    end else
      if R52.Text='' then begin
        R52.Text:='ш';
        rc2:='ш';
      end else
        if R53.Text='' then begin
          R53.Text:='ш';
          rc3:='ш';
        end else
          if R54.Text='' then begin
            R54.Text:='ш';
            rc4:='ш';
          end else
            if R55.Text='' then begin
              R55.Text:='ш';
              rc5:='ш';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ш';
      rc1:='ш';
    end else
      if R62.Text='' then begin
        R62.Text:='ш';
        rc2:='ш';
      end else
        if R63.Text='' then begin
          R63.Text:='ш';
          rc3:='ш';
        end else
          if R64.Text='' then begin
            R64.Text:='ш';
            rc4:='ш';
          end else
            if R65.Text='' then begin
              R65.Text:='ш';
              rc5:='ш';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.щClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='щ';
      rc1:='щ';
    end else
      if R12.Text='' then begin
        R12.Text:='щ';
        rc2:='щ';
      end else
        if R13.Text='' then begin
          R13.Text:='щ';
          rc3:='щ';
        end else
          if R14.Text='' then begin
            R14.Text:='щ';
            rc4:='щ';
          end else
            if R15.Text='' then begin
              R15.Text:='щ';
              rc5:='щ';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='щ';
      rc1:='щ';
    end else
      if R22.Text='' then begin
        R22.Text:='щ';
        rc2:='щ';
      end else
        if R23.Text='' then begin
          R23.Text:='щ';
          rc3:='щ';
        end else
          if R24.Text='' then begin
            R24.Text:='щ';
            rc4:='щ';
          end else
            if R25.Text='' then begin
              R25.Text:='щ';
              rc5:='щ';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='щ';
      rc1:='щ';
    end else
      if R32.Text='' then begin
        R32.Text:='щ';
        rc2:='щ';
      end else
        if R33.Text='' then begin
          R33.Text:='щ';
          rc3:='щ';
        end else
          if R34.Text='' then begin
            R34.Text:='щ';
            rc4:='щ';
          end else
            if R35.Text='' then begin
              R35.Text:='щ';
              rc5:='щ';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='щ';
      rc1:='щ';
    end else
      if R42.Text='' then begin
        R42.Text:='щ';
        rc2:='щ';
      end else
        if R43.Text='' then begin
          R43.Text:='щ';
          rc3:='щ';
        end else
          if R44.Text='' then begin
            R44.Text:='щ';
            rc4:='щ';
          end else
            if R45.Text='' then begin
              R45.Text:='щ';
              rc5:='щ';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='щ';
      rc1:='щ';
    end else
      if R52.Text='' then begin
        R52.Text:='щ';
        rc2:='щ';
      end else
        if R53.Text='' then begin
          R53.Text:='щ';
          rc3:='щ';
        end else
          if R54.Text='' then begin
            R54.Text:='щ';
            rc4:='щ';
          end else
            if R55.Text='' then begin
              R55.Text:='щ';
              rc5:='щ';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='щ';
      rc1:='щ';
    end else
      if R62.Text='' then begin
        R62.Text:='щ';
        rc2:='щ';
      end else
        if R63.Text='' then begin
          R63.Text:='щ';
          rc3:='щ';
        end else
          if R64.Text='' then begin
            R64.Text:='щ';
            rc4:='щ';
          end else
            if R65.Text='' then begin
              R65.Text:='щ';
              rc5:='щ';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.зClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='з';
      rc1:='з';
    end else
      if R12.Text='' then begin
        R12.Text:='з';
        rc2:='з';
      end else
        if R13.Text='' then begin
          R13.Text:='з';
          rc3:='з';
        end else
          if R14.Text='' then begin
            R14.Text:='з';
            rc4:='з';
          end else
            if R15.Text='' then begin
              R15.Text:='з';
              rc5:='з';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='з';
      rc1:='з';
    end else
      if R22.Text='' then begin
        R22.Text:='з';
        rc2:='з';
      end else
        if R23.Text='' then begin
          R23.Text:='з';
          rc3:='з';
        end else
          if R24.Text='' then begin
            R24.Text:='з';
            rc4:='з';
          end else
            if R25.Text='' then begin
              R25.Text:='з';
              rc5:='з';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='з';
      rc1:='з';
    end else
      if R32.Text='' then begin
        R32.Text:='з';
        rc2:='з';
      end else
        if R33.Text='' then begin
          R33.Text:='з';
          rc3:='з';
        end else
          if R34.Text='' then begin
            R34.Text:='з';
            rc4:='з';
          end else
            if R35.Text='' then begin
              R35.Text:='з';
              rc5:='з';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='з';
      rc1:='з';
    end else
      if R42.Text='' then begin
        R42.Text:='з';
        rc2:='з';
      end else
        if R43.Text='' then begin
          R43.Text:='з';
          rc3:='з';
        end else
          if R44.Text='' then begin
            R44.Text:='з';
            rc4:='з';
          end else
            if R45.Text='' then begin
              R45.Text:='з';
              rc5:='з';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='з';
      rc1:='з';
    end else
      if R52.Text='' then begin
        R52.Text:='з';
        rc2:='з';
      end else
        if R53.Text='' then begin
          R53.Text:='з';
          rc3:='з';
        end else
          if R54.Text='' then begin
            R54.Text:='з';
            rc4:='з';
          end else
            if R55.Text='' then begin
              R55.Text:='з';
              rc5:='з';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='з';
      rc1:='з';
    end else
      if R62.Text='' then begin
        R62.Text:='з';
        rc2:='з';
      end else
        if R63.Text='' then begin
          R63.Text:='з';
          rc3:='з';
        end else
          if R64.Text='' then begin
            R64.Text:='з';
            rc4:='з';
          end else
            if R65.Text='' then begin
              R65.Text:='з';
              rc5:='з';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.фClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ф';
      rc1:='ф';
    end else
      if R12.Text='' then begin
        R12.Text:='ф';
        rc2:='ф';
      end else
        if R13.Text='' then begin
          R13.Text:='ф';
          rc3:='ф';
        end else
          if R14.Text='' then begin
            R14.Text:='ф';
            rc4:='ф';
          end else
            if R15.Text='' then begin
              R15.Text:='ф';
              rc5:='ф';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ф';
      rc1:='ф';
    end else
      if R22.Text='' then begin
        R22.Text:='ф';
        rc2:='ф';
      end else
        if R23.Text='' then begin
          R23.Text:='ф';
          rc3:='ф';
        end else
          if R24.Text='' then begin
            R24.Text:='ф';
            rc4:='ф';
          end else
            if R25.Text='' then begin
              R25.Text:='ф';
              rc5:='ф';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ф';
      rc1:='ф';
    end else
      if R32.Text='' then begin
        R32.Text:='ф';
        rc2:='ф';
      end else
        if R33.Text='' then begin
          R33.Text:='ф';
          rc3:='ф';
        end else
          if R34.Text='' then begin
            R34.Text:='ф';
            rc4:='ф';
          end else
            if R35.Text='' then begin
              R35.Text:='ф';
              rc5:='ф';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ф';
      rc1:='ф';
    end else
      if R42.Text='' then begin
        R42.Text:='ф';
        rc2:='ф';
      end else
        if R43.Text='' then begin
          R43.Text:='ф';
          rc3:='ф';
        end else
          if R44.Text='' then begin
            R44.Text:='ф';
            rc4:='ф';
          end else
            if R45.Text='' then begin
              R45.Text:='ф';
              rc5:='ф';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ф';
      rc1:='ф';
    end else
      if R52.Text='' then begin
        R52.Text:='ф';
        rc2:='ф';
      end else
        if R53.Text='' then begin
          R53.Text:='ф';
          rc3:='ф';
        end else
          if R54.Text='' then begin
            R54.Text:='ф';
            rc4:='ф';
          end else
            if R55.Text='' then begin
              R55.Text:='ф';
              rc5:='ф';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ф';
      rc1:='ф';
    end else
      if R62.Text='' then begin
        R62.Text:='ф';
        rc2:='ф';
      end else
        if R63.Text='' then begin
          R63.Text:='ф';
          rc3:='ф';
        end else
          if R64.Text='' then begin
            R64.Text:='ф';
            rc4:='ф';
          end else
            if R65.Text='' then begin
              R65.Text:='ф';
              rc5:='ф';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.ыClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ы';
      rc1:='ы';
    end else
      if R12.Text='' then begin
        R12.Text:='ы';
        rc2:='ы';
      end else
        if R13.Text='' then begin
          R13.Text:='ы';
          rc3:='ы';
        end else
          if R14.Text='' then begin
            R14.Text:='ы';
            rc4:='ы';
          end else
            if R15.Text='' then begin
              R15.Text:='ы';
              rc5:='ы';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ы';
      rc1:='ы';
    end else
      if R22.Text='' then begin
        R22.Text:='ы';
        rc2:='ы';
      end else
        if R23.Text='' then begin
          R23.Text:='ы';
          rc3:='ы';
        end else
          if R24.Text='' then begin
            R24.Text:='ы';
            rc4:='ы';
          end else
            if R25.Text='' then begin
              R25.Text:='ы';
              rc5:='ы';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ы';
      rc1:='ы';
    end else
      if R32.Text='' then begin
        R32.Text:='ы';
        rc2:='ы';
      end else
        if R33.Text='' then begin
          R33.Text:='ы';
          rc3:='ы';
        end else
          if R34.Text='' then begin
            R34.Text:='ы';
            rc4:='ы';
          end else
            if R35.Text='' then begin
              R35.Text:='ы';
              rc5:='ы';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ы';
      rc1:='ы';
    end else
      if R42.Text='' then begin
        R42.Text:='ы';
        rc2:='ы';
      end else
        if R43.Text='' then begin
          R43.Text:='ы';
          rc3:='ы';
        end else
          if R44.Text='' then begin
            R44.Text:='ы';
            rc4:='ы';
          end else
            if R45.Text='' then begin
              R45.Text:='ы';
              rc5:='ы';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ы';
      rc1:='ы';
    end else
      if R52.Text='' then begin
        R52.Text:='ы';
        rc2:='ы';
      end else
        if R53.Text='' then begin
          R53.Text:='ы';
          rc3:='ы';
        end else
          if R54.Text='' then begin
            R54.Text:='ы';
            rc4:='ы';
          end else
            if R55.Text='' then begin
              R55.Text:='ы';
              rc5:='ы';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ы';
      rc1:='ы';
    end else
      if R62.Text='' then begin
        R62.Text:='ы';
        rc2:='ы';
      end else
        if R63.Text='' then begin
          R63.Text:='ы';
          rc3:='ы';
        end else
          if R64.Text='' then begin
            R64.Text:='ы';
            rc4:='ы';
          end else
            if R65.Text='' then begin
              R65.Text:='ы';
              rc5:='ы';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.вClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='в';
      rc1:='в';
    end else
      if R12.Text='' then begin
        R12.Text:='в';
        rc2:='в';
      end else
        if R13.Text='' then begin
          R13.Text:='в';
          rc3:='в';
        end else
          if R14.Text='' then begin
            R14.Text:='в';
            rc4:='в';
          end else
            if R15.Text='' then begin
              R15.Text:='в';
              rc5:='в';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='в';
      rc1:='в';
    end else
      if R22.Text='' then begin
        R22.Text:='в';
        rc2:='в';
      end else
        if R23.Text='' then begin
          R23.Text:='в';
          rc3:='в';
        end else
          if R24.Text='' then begin
            R24.Text:='в';
            rc4:='в';
          end else
            if R25.Text='' then begin
              R25.Text:='в';
              rc5:='в';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='в';
      rc1:='в';
    end else
      if R32.Text='' then begin
        R32.Text:='в';
        rc2:='в';
      end else
        if R33.Text='' then begin
          R33.Text:='в';
          rc3:='в';
        end else
          if R34.Text='' then begin
            R34.Text:='в';
            rc4:='в';
          end else
            if R35.Text='' then begin
              R35.Text:='в';
              rc5:='в';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='в';
      rc1:='в';
    end else
      if R42.Text='' then begin
        R42.Text:='в';
        rc2:='в';
      end else
        if R43.Text='' then begin
          R43.Text:='в';
          rc3:='в';
        end else
          if R44.Text='' then begin
            R44.Text:='в';
            rc4:='в';
          end else
            if R45.Text='' then begin
              R45.Text:='в';
              rc5:='в';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='в';
      rc1:='в';
    end else
      if R52.Text='' then begin
        R52.Text:='в';
        rc2:='в';
      end else
        if R53.Text='' then begin
          R53.Text:='в';
          rc3:='в';
        end else
          if R54.Text='' then begin
            R54.Text:='в';
            rc4:='в';
          end else
            if R55.Text='' then begin
              R55.Text:='в';
              rc5:='в';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='в';
      rc1:='в';
    end else
      if R62.Text='' then begin
        R62.Text:='в';
        rc2:='в';
      end else
        if R63.Text='' then begin
          R63.Text:='в';
          rc3:='в';
        end else
          if R64.Text='' then begin
            R64.Text:='в';
            rc4:='в';
          end else
            if R65.Text='' then begin
              R65.Text:='в';
              rc5:='в';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.аClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='а';
      rc1:='а';
    end else
      if R12.Text='' then begin
        R12.Text:='а';
        rc2:='а';
      end else
        if R13.Text='' then begin
          R13.Text:='а';
          rc3:='а';
        end else
          if R14.Text='' then begin
            R14.Text:='а';
            rc4:='а';
          end else
            if R15.Text='' then begin
              R15.Text:='а';
              rc5:='а';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='а';
      rc1:='а';
    end else
      if R22.Text='' then begin
        R22.Text:='а';
        rc2:='а';
      end else
        if R23.Text='' then begin
          R23.Text:='а';
          rc3:='а';
        end else
          if R24.Text='' then begin
            R24.Text:='а';
            rc4:='а';
          end else
            if R25.Text='' then begin
              R25.Text:='а';
              rc5:='а';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='а';
      rc1:='а';
    end else
      if R32.Text='' then begin
        R32.Text:='а';
        rc2:='а';
      end else
        if R33.Text='' then begin
          R33.Text:='а';
          rc3:='а';
        end else
          if R34.Text='' then begin
            R34.Text:='а';
            rc4:='а';
          end else
            if R35.Text='' then begin
              R35.Text:='а';
              rc5:='а';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='а';
      rc1:='а';
    end else
      if R42.Text='' then begin
        R42.Text:='а';
        rc2:='а';
      end else
        if R43.Text='' then begin
          R43.Text:='а';
          rc3:='а';
        end else
          if R44.Text='' then begin
            R44.Text:='а';
            rc4:='а';
          end else
            if R45.Text='' then begin
              R45.Text:='а';
              rc5:='а';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='а';
      rc1:='а';
    end else
      if R52.Text='' then begin
        R52.Text:='а';
        rc2:='а';
      end else
        if R53.Text='' then begin
          R53.Text:='а';
          rc3:='а';
        end else
          if R54.Text='' then begin
            R54.Text:='а';
            rc4:='а';
          end else
            if R55.Text='' then begin
              R55.Text:='а';
              rc5:='а';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='а';
      rc1:='а';
    end else
      if R62.Text='' then begin
        R62.Text:='а';
        rc2:='а';
      end else
        if R63.Text='' then begin
          R63.Text:='а';
          rc3:='а';
        end else
          if R64.Text='' then begin
            R64.Text:='а';
            rc4:='а';
          end else
            if R65.Text='' then begin
              R65.Text:='а';
              rc5:='а';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  end;

procedure TForm2.пClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='п';
      rc1:='п';
    end else
      if R12.Text='' then begin
        R12.Text:='п';
        rc2:='п';
      end else
        if R13.Text='' then begin
          R13.Text:='п';
          rc3:='п';
        end else
          if R14.Text='' then begin
            R14.Text:='п';
            rc4:='п';
          end else
            if R15.Text='' then begin
              R15.Text:='п';
              rc5:='п';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='п';
      rc1:='п';
    end else
      if R22.Text='' then begin
        R22.Text:='п';
        rc2:='п';
      end else
        if R23.Text='' then begin
          R23.Text:='п';
          rc3:='п';
        end else
          if R24.Text='' then begin
            R24.Text:='п';
            rc4:='п';
          end else
            if R25.Text='' then begin
              R25.Text:='п';
              rc5:='п';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='п';
      rc1:='п';
    end else
      if R32.Text='' then begin
        R32.Text:='п';
        rc2:='п';
      end else
        if R33.Text='' then begin
          R33.Text:='п';
          rc3:='п';
        end else
          if R34.Text='' then begin
            R34.Text:='п';
            rc4:='п';
          end else
            if R35.Text='' then begin
              R35.Text:='п';
              rc5:='п';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='п';
      rc1:='п';
    end else
      if R42.Text='' then begin
        R42.Text:='п';
        rc2:='п';
      end else
        if R43.Text='' then begin
          R43.Text:='п';
          rc3:='п';
        end else
          if R44.Text='' then begin
            R44.Text:='п';
            rc4:='п';
          end else
            if R45.Text='' then begin
              R45.Text:='п';
              rc5:='п';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='п';
      rc1:='п';
    end else
      if R52.Text='' then begin
        R52.Text:='п';
        rc2:='п';
      end else
        if R53.Text='' then begin
          R53.Text:='п';
          rc3:='п';
        end else
          if R54.Text='' then begin
            R54.Text:='п';
            rc4:='п';
          end else
            if R55.Text='' then begin
              R55.Text:='п';
              rc5:='п';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='п';
      rc1:='п';
    end else
      if R62.Text='' then begin
        R62.Text:='п';
        rc2:='п';
      end else
        if R63.Text='' then begin
          R63.Text:='п';
          rc3:='п';
        end else
          if R64.Text='' then begin
            R64.Text:='п';
            rc4:='п';
          end else
            if R65.Text='' then begin
              R65.Text:='п';
              rc5:='п';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.рClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='р';
      rc1:='р';
    end else
      if R12.Text='' then begin
        R12.Text:='р';
        rc2:='р';
      end else
        if R13.Text='' then begin
          R13.Text:='р';
          rc3:='р';
        end else
          if R14.Text='' then begin
            R14.Text:='р';
            rc4:='р';
          end else
            if R15.Text='' then begin
              R15.Text:='р';
              rc5:='р';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='р';
      rc1:='р';
    end else
      if R22.Text='' then begin
        R22.Text:='р';
        rc2:='р';
      end else
        if R23.Text='' then begin
          R23.Text:='р';
          rc3:='р';
        end else
          if R24.Text='' then begin
            R24.Text:='р';
            rc4:='р';
          end else
            if R25.Text='' then begin
              R25.Text:='р';
              rc5:='р';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='р';
      rc1:='р';
    end else
      if R32.Text='' then begin
        R32.Text:='р';
        rc2:='р';
      end else
        if R33.Text='' then begin
          R33.Text:='р';
          rc3:='р';
        end else
          if R34.Text='' then begin
            R34.Text:='р';
            rc4:='р';
          end else
            if R35.Text='' then begin
              R35.Text:='р';
              rc5:='р';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='р';
      rc1:='р';
    end else
      if R42.Text='' then begin
        R42.Text:='р';
        rc2:='р';
      end else
        if R43.Text='' then begin
          R43.Text:='р';
          rc3:='р';
        end else
          if R44.Text='' then begin
            R44.Text:='р';
            rc4:='р';
          end else
            if R45.Text='' then begin
              R45.Text:='р';
              rc5:='р';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='р';
      rc1:='р';
    end else
      if R52.Text='' then begin
        R52.Text:='р';
        rc2:='р';
      end else
        if R53.Text='' then begin
          R53.Text:='р';
          rc3:='р';
        end else
          if R54.Text='' then begin
            R54.Text:='р';
            rc4:='р';
          end else
            if R55.Text='' then begin
              R55.Text:='р';
              rc5:='р';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='р';
      rc1:='р';
    end else
      if R62.Text='' then begin
        R62.Text:='р';
        rc2:='р';
      end else
        if R63.Text='' then begin
          R63.Text:='р';
          rc3:='р';
        end else
          if R64.Text='' then begin
            R64.Text:='р';
            rc4:='р';
          end else
            if R65.Text='' then begin
              R65.Text:='р';
              rc5:='р';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.оClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='о';
      rc1:='о';
    end else
      if R12.Text='' then begin
        R12.Text:='о';
        rc2:='о';
      end else
        if R13.Text='' then begin
          R13.Text:='о';
          rc3:='о';
        end else
          if R14.Text='' then begin
            R14.Text:='о';
            rc4:='о';
          end else
            if R15.Text='' then begin
              R15.Text:='о';
              rc5:='о';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='о';
      rc1:='о';
    end else
      if R22.Text='' then begin
        R22.Text:='о';
        rc2:='о';
      end else
        if R23.Text='' then begin
          R23.Text:='о';
          rc3:='о';
        end else
          if R24.Text='' then begin
            R24.Text:='о';
            rc4:='о';
          end else
            if R25.Text='' then begin
              R25.Text:='о';
              rc5:='о';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='о';
      rc1:='о';
    end else
      if R32.Text='' then begin
        R32.Text:='о';
        rc2:='о';
      end else
        if R33.Text='' then begin
          R33.Text:='о';
          rc3:='о';
        end else
          if R34.Text='' then begin
            R34.Text:='о';
            rc4:='о';
          end else
            if R35.Text='' then begin
              R35.Text:='о';
              rc5:='о';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='о';
      rc1:='о';
    end else
      if R42.Text='' then begin
        R42.Text:='о';
        rc2:='о';
      end else
        if R43.Text='' then begin
          R43.Text:='о';
          rc3:='о';
        end else
          if R44.Text='' then begin
            R44.Text:='о';
            rc4:='о';
          end else
            if R45.Text='' then begin
              R45.Text:='о';
              rc5:='о';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='о';
      rc1:='о';
    end else
      if R52.Text='' then begin
        R52.Text:='о';
        rc2:='о';
      end else
        if R53.Text='' then begin
          R53.Text:='о';
          rc3:='о';
        end else
          if R54.Text='' then begin
            R54.Text:='о';
            rc4:='о';
          end else
            if R55.Text='' then begin
              R55.Text:='о';
              rc5:='о';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='о';
      rc1:='о';
    end else
      if R62.Text='' then begin
        R62.Text:='о';
        rc2:='о';
      end else
        if R63.Text='' then begin
          R63.Text:='о';
          rc3:='о';
        end else
          if R64.Text='' then begin
            R64.Text:='о';
            rc4:='о';
          end else
            if R65.Text='' then begin
              R65.Text:='о';
              rc5:='о';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.лClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='л';
      rc1:='л';
    end else
      if R12.Text='' then begin
        R12.Text:='л';
        rc2:='л';
      end else
        if R13.Text='' then begin
          R13.Text:='л';
          rc3:='л';
        end else
          if R14.Text='' then begin
            R14.Text:='л';
            rc4:='л';
          end else
            if R15.Text='' then begin
              R15.Text:='л';
              rc5:='л';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='л';
      rc1:='л';
    end else
      if R22.Text='' then begin
        R22.Text:='л';
        rc2:='л';
      end else
        if R23.Text='' then begin
          R23.Text:='л';
          rc3:='л';
        end else
          if R24.Text='' then begin
            R24.Text:='л';
            rc4:='л';
          end else
            if R25.Text='' then begin
              R25.Text:='л';
              rc5:='л';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='л';
      rc1:='л';
    end else
      if R32.Text='' then begin
        R32.Text:='л';
        rc2:='л';
      end else
        if R33.Text='' then begin
          R33.Text:='л';
          rc3:='л';
        end else
          if R34.Text='' then begin
            R34.Text:='л';
            rc4:='л';
          end else
            if R35.Text='' then begin
              R35.Text:='л';
              rc5:='л';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='л';
      rc1:='л';
    end else
      if R42.Text='' then begin
        R42.Text:='л';
        rc2:='л';
      end else
        if R43.Text='' then begin
          R43.Text:='л';
          rc3:='л';
        end else
          if R44.Text='' then begin
            R44.Text:='л';
            rc4:='л';
          end else
            if R45.Text='' then begin
              R45.Text:='л';
              rc5:='л';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='л';
      rc1:='л';
    end else
      if R52.Text='' then begin
        R52.Text:='л';
        rc2:='л';
      end else
        if R53.Text='' then begin
          R53.Text:='л';
          rc3:='л';
        end else
          if R54.Text='' then begin
            R54.Text:='л';
            rc4:='л';
          end else
            if R55.Text='' then begin
              R55.Text:='л';
              rc5:='л';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='л';
      rc1:='л';
    end else
      if R62.Text='' then begin
        R62.Text:='л';
        rc2:='л';
      end else
        if R63.Text='' then begin
          R63.Text:='л';
          rc3:='л';
        end else
          if R64.Text='' then begin
            R64.Text:='л';
            rc4:='л';
          end else
            if R65.Text='' then begin
              R65.Text:='л';
              rc5:='л';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.дClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='д';
      rc1:='д';
    end else
      if R12.Text='' then begin
        R12.Text:='д';
        rc2:='д';
      end else
        if R13.Text='' then begin
          R13.Text:='д';
          rc3:='д';
        end else
          if R14.Text='' then begin
            R14.Text:='д';
            rc4:='д';
          end else
            if R15.Text='' then begin
              R15.Text:='д';
              rc5:='д';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='д';
      rc1:='д';
    end else
      if R22.Text='' then begin
        R22.Text:='д';
        rc2:='д';
      end else
        if R23.Text='' then begin
          R23.Text:='д';
          rc3:='д';
        end else
          if R24.Text='' then begin
            R24.Text:='д';
            rc4:='д';
          end else
            if R25.Text='' then begin
              R25.Text:='д';
              rc5:='д';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='д';
      rc1:='д';
    end else
      if R32.Text='' then begin
        R32.Text:='д';
        rc2:='д';
      end else
        if R33.Text='' then begin
          R33.Text:='д';
          rc3:='д';
        end else
          if R34.Text='' then begin
            R34.Text:='д';
            rc4:='д';
          end else
            if R35.Text='' then begin
              R35.Text:='д';
              rc5:='д';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='д';
      rc1:='д';
    end else
      if R42.Text='' then begin
        R42.Text:='д';
        rc2:='д';
      end else
        if R43.Text='' then begin
          R43.Text:='д';
          rc3:='д';
        end else
          if R44.Text='' then begin
            R44.Text:='д';
            rc4:='д';
          end else
            if R45.Text='' then begin
              R45.Text:='д';
              rc5:='д';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='д';
      rc1:='д';
    end else
      if R52.Text='' then begin
        R52.Text:='д';
        rc2:='д';
      end else
        if R53.Text='' then begin
          R53.Text:='д';
          rc3:='д';
        end else
          if R54.Text='' then begin
            R54.Text:='д';
            rc4:='д';
          end else
            if R55.Text='' then begin
              R55.Text:='д';
              rc5:='д';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='д';
      rc1:='д';
    end else
      if R62.Text='' then begin
        R62.Text:='д';
        rc2:='д';
      end else
        if R63.Text='' then begin
          R63.Text:='д';
          rc3:='д';
        end else
          if R64.Text='' then begin
            R64.Text:='д';
            rc4:='д';
          end else
            if R65.Text='' then begin
              R65.Text:='д';
              rc5:='д';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.яClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='я';
      rc1:='я';
    end else
      if R12.Text='' then begin
        R12.Text:='я';
        rc2:='я';
      end else
        if R13.Text='' then begin
          R13.Text:='я';
          rc3:='я';
        end else
          if R14.Text='' then begin
            R14.Text:='я';
            rc4:='я';
          end else
            if R15.Text='' then begin
              R15.Text:='я';
              rc5:='я';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='я';
      rc1:='я';
    end else
      if R22.Text='' then begin
        R22.Text:='я';
        rc2:='я';
      end else
        if R23.Text='' then begin
          R23.Text:='я';
          rc3:='я';
        end else
          if R24.Text='' then begin
            R24.Text:='я';
            rc4:='я';
          end else
            if R25.Text='' then begin
              R25.Text:='я';
              rc5:='я';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='я';
      rc1:='я';
    end else
      if R32.Text='' then begin
        R32.Text:='я';
        rc2:='я';
      end else
        if R33.Text='' then begin
          R33.Text:='я';
          rc3:='я';
        end else
          if R34.Text='' then begin
            R34.Text:='я';
            rc4:='я';
          end else
            if R35.Text='' then begin
              R35.Text:='я';
              rc5:='я';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='я';
      rc1:='я';
    end else
      if R42.Text='' then begin
        R42.Text:='я';
        rc2:='я';
      end else
        if R43.Text='' then begin
          R43.Text:='я';
          rc3:='я';
        end else
          if R44.Text='' then begin
            R44.Text:='я';
            rc4:='я';
          end else
            if R45.Text='' then begin
              R45.Text:='я';
              rc5:='я';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='я';
      rc1:='я';
    end else
      if R52.Text='' then begin
        R52.Text:='я';
        rc2:='я';
      end else
        if R53.Text='' then begin
          R53.Text:='я';
          rc3:='я';
        end else
          if R54.Text='' then begin
            R54.Text:='я';
            rc4:='я';
          end else
            if R55.Text='' then begin
              R55.Text:='я';
              rc5:='я';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='я';
      rc1:='я';
    end else
      if R62.Text='' then begin
        R62.Text:='я';
        rc2:='я';
      end else
        if R63.Text='' then begin
          R63.Text:='я';
          rc3:='я';
        end else
          if R64.Text='' then begin
            R64.Text:='я';
            rc4:='я';
          end else
            if R65.Text='' then begin
              R65.Text:='я';
              rc5:='я';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.чClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ч';
      rc1:='ч';
    end else
      if R12.Text='' then begin
        R12.Text:='ч';
        rc2:='ч';
      end else
        if R13.Text='' then begin
          R13.Text:='ч';
          rc3:='ч';
        end else
          if R14.Text='' then begin
            R14.Text:='ч';
            rc4:='ч';
          end else
            if R15.Text='' then begin
              R15.Text:='ч';
              rc5:='ч';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ч';
      rc1:='ч';
    end else
      if R22.Text='' then begin
        R22.Text:='ч';
        rc2:='ч';
      end else
        if R23.Text='' then begin
          R23.Text:='ч';
          rc3:='ч';
        end else
          if R24.Text='' then begin
            R24.Text:='ч';
            rc4:='ч';
          end else
            if R25.Text='' then begin
              R25.Text:='ч';
              rc5:='ч';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ч';
      rc1:='ч';
    end else
      if R32.Text='' then begin
        R32.Text:='ч';
        rc2:='ч';
      end else
        if R33.Text='' then begin
          R33.Text:='ч';
          rc3:='ч';
        end else
          if R34.Text='' then begin
            R34.Text:='ч';
            rc4:='ч';
          end else
            if R35.Text='' then begin
              R35.Text:='ч';
              rc5:='ч';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ч';
      rc1:='ч';
    end else
      if R42.Text='' then begin
        R42.Text:='ч';
        rc2:='ч';
      end else
        if R43.Text='' then begin
          R43.Text:='ч';
          rc3:='ч';
        end else
          if R44.Text='' then begin
            R44.Text:='ч';
            rc4:='ч';
          end else
            if R45.Text='' then begin
              R45.Text:='ч';
              rc5:='ч';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ч';
      rc1:='ч';
    end else
      if R52.Text='' then begin
        R52.Text:='ч';
        rc2:='ч';
      end else
        if R53.Text='' then begin
          R53.Text:='ч';
          rc3:='ч';
        end else
          if R54.Text='' then begin
            R54.Text:='ч';
            rc4:='ч';
          end else
            if R55.Text='' then begin
              R55.Text:='ч';
              rc5:='ч';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ч';
      rc1:='ч';
    end else
      if R62.Text='' then begin
        R62.Text:='ч';
        rc2:='ч';
      end else
        if R63.Text='' then begin
          R63.Text:='ч';
          rc3:='ч';
        end else
          if R64.Text='' then begin
            R64.Text:='ч';
            rc4:='ч';
          end else
            if R65.Text='' then begin
              R65.Text:='ч';
              rc5:='ч';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.сClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='с';
      rc1:='с';
    end else
      if R12.Text='' then begin
        R12.Text:='с';
        rc2:='с';
      end else
        if R13.Text='' then begin
          R13.Text:='с';
          rc3:='с';
        end else
          if R14.Text='' then begin
            R14.Text:='с';
            rc4:='с';
          end else
            if R15.Text='' then begin
              R15.Text:='с';
              rc5:='с';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='с';
      rc1:='с';
    end else
      if R22.Text='' then begin
        R22.Text:='с';
        rc2:='с';
      end else
        if R23.Text='' then begin
          R23.Text:='с';
          rc3:='с';
        end else
          if R24.Text='' then begin
            R24.Text:='с';
            rc4:='с';
          end else
            if R25.Text='' then begin
              R25.Text:='с';
              rc5:='с';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='с';
      rc1:='с';
    end else
      if R32.Text='' then begin
        R32.Text:='с';
        rc2:='с';
      end else
        if R33.Text='' then begin
          R33.Text:='с';
          rc3:='с';
        end else
          if R34.Text='' then begin
            R34.Text:='с';
            rc4:='с';
          end else
            if R35.Text='' then begin
              R35.Text:='с';
              rc5:='с';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='с';
      rc1:='с';
    end else
      if R42.Text='' then begin
        R42.Text:='с';
        rc2:='с';
      end else
        if R43.Text='' then begin
          R43.Text:='с';
          rc3:='с';
        end else
          if R44.Text='' then begin
            R44.Text:='с';
            rc4:='с';
          end else
            if R45.Text='' then begin
              R45.Text:='с';
              rc5:='с';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='с';
      rc1:='с';
    end else
      if R52.Text='' then begin
        R52.Text:='с';
        rc2:='с';
      end else
        if R53.Text='' then begin
          R53.Text:='с';
          rc3:='с';
        end else
          if R54.Text='' then begin
            R54.Text:='с';
            rc4:='с';
          end else
            if R55.Text='' then begin
              R55.Text:='с';
              rc5:='с';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='с';
      rc1:='с';
    end else
      if R62.Text='' then begin
        R62.Text:='с';
        rc2:='с';
      end else
        if R63.Text='' then begin
          R63.Text:='с';
          rc3:='с';
        end else
          if R64.Text='' then begin
            R64.Text:='с';
            rc4:='с';
          end else
            if R65.Text='' then begin
              R65.Text:='с';
              rc5:='с';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.мClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='м';
      rc1:='м';
    end else
      if R12.Text='' then begin
        R12.Text:='м';
        rc2:='м';
      end else
        if R13.Text='' then begin
          R13.Text:='м';
          rc3:='м';
        end else
          if R14.Text='' then begin
            R14.Text:='м';
            rc4:='м';
          end else
            if R15.Text='' then begin
              R15.Text:='м';
              rc5:='м';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='м';
      rc1:='м';
    end else
      if R22.Text='' then begin
        R22.Text:='м';
        rc2:='м';
      end else
        if R23.Text='' then begin
          R23.Text:='м';
          rc3:='м';
        end else
          if R24.Text='' then begin
            R24.Text:='м';
            rc4:='м';
          end else
            if R25.Text='' then begin
              R25.Text:='м';
              rc5:='м';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='м';
      rc1:='м';
    end else
      if R32.Text='' then begin
        R32.Text:='м';
        rc2:='м';
      end else
        if R33.Text='' then begin
          R33.Text:='м';
          rc3:='м';
        end else
          if R34.Text='' then begin
            R34.Text:='м';
            rc4:='м';
          end else
            if R35.Text='' then begin
              R35.Text:='м';
              rc5:='м';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='м';
      rc1:='м';
    end else
      if R42.Text='' then begin
        R42.Text:='м';
        rc2:='м';
      end else
        if R43.Text='' then begin
          R43.Text:='м';
          rc3:='м';
        end else
          if R44.Text='' then begin
            R44.Text:='м';
            rc4:='м';
          end else
            if R45.Text='' then begin
              R45.Text:='м';
              rc5:='м';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='м';
      rc1:='м';
    end else
      if R52.Text='' then begin
        R52.Text:='м';
        rc2:='м';
      end else
        if R53.Text='' then begin
          R53.Text:='м';
          rc3:='м';
        end else
          if R54.Text='' then begin
            R54.Text:='м';
            rc4:='м';
          end else
            if R55.Text='' then begin
              R55.Text:='м';
              rc5:='м';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='м';
      rc1:='м';
    end else
      if R62.Text='' then begin
        R62.Text:='м';
        rc2:='м';
      end else
        if R63.Text='' then begin
          R63.Text:='м';
          rc3:='м';
        end else
          if R64.Text='' then begin
            R64.Text:='м';
            rc4:='м';
          end else
            if R65.Text='' then begin
              R65.Text:='м';
              rc5:='м';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.иClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='и';
      rc1:='и';
    end else
      if R12.Text='' then begin
        R12.Text:='и';
        rc2:='и';
      end else
        if R13.Text='' then begin
          R13.Text:='и';
          rc3:='и';
        end else
          if R14.Text='' then begin
            R14.Text:='и';
            rc4:='и';
          end else
            if R15.Text='' then begin
              R15.Text:='и';
              rc5:='и';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='и';
      rc1:='и';
    end else
      if R22.Text='' then begin
        R22.Text:='и';
        rc2:='и';
      end else
        if R23.Text='' then begin
          R23.Text:='и';
          rc3:='и';
        end else
          if R24.Text='' then begin
            R24.Text:='и';
            rc4:='и';
          end else
            if R25.Text='' then begin
              R25.Text:='и';
              rc5:='и';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='и';
      rc1:='и';
    end else
      if R32.Text='' then begin
        R32.Text:='и';
        rc2:='и';
      end else
        if R33.Text='' then begin
          R33.Text:='и';
          rc3:='и';
        end else
          if R34.Text='' then begin
            R34.Text:='и';
            rc4:='и';
          end else
            if R35.Text='' then begin
              R35.Text:='и';
              rc5:='и';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='и';
      rc1:='и';
    end else
      if R42.Text='' then begin
        R42.Text:='и';
        rc2:='и';
      end else
        if R43.Text='' then begin
          R43.Text:='и';
          rc3:='и';
        end else
          if R44.Text='' then begin
            R44.Text:='и';
            rc4:='и';
          end else
            if R45.Text='' then begin
              R45.Text:='и';
              rc5:='и';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='и';
      rc1:='и';
    end else
      if R52.Text='' then begin
        R52.Text:='и';
        rc2:='и';
      end else
        if R53.Text='' then begin
          R53.Text:='и';
          rc3:='и';
        end else
          if R54.Text='' then begin
            R54.Text:='и';
            rc4:='и';
          end else
            if R55.Text='' then begin
              R55.Text:='и';
              rc5:='и';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='и';
      rc1:='и';
    end else
      if R62.Text='' then begin
        R62.Text:='и';
        rc2:='и';
      end else
        if R63.Text='' then begin
          R63.Text:='и';
          rc3:='и';
        end else
          if R64.Text='' then begin
            R64.Text:='и';
            rc4:='и';
          end else
            if R65.Text='' then begin
              R65.Text:='и';
              rc5:='и';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.тClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='т';
      rc1:='т';
    end else
      if R12.Text='' then begin
        R12.Text:='т';
        rc2:='т';
      end else
        if R13.Text='' then begin
          R13.Text:='т';
          rc3:='т';
        end else
          if R14.Text='' then begin
            R14.Text:='т';
            rc4:='т';
          end else
            if R15.Text='' then begin
              R15.Text:='т';
              rc5:='т';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='т';
      rc1:='т';
    end else
      if R22.Text='' then begin
        R22.Text:='т';
        rc2:='т';
      end else
        if R23.Text='' then begin
          R23.Text:='т';
          rc3:='т';
        end else
          if R24.Text='' then begin
            R24.Text:='т';
            rc4:='т';
          end else
            if R25.Text='' then begin
              R25.Text:='т';
              rc5:='т';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='т';
      rc1:='т';
    end else
      if R32.Text='' then begin
        R32.Text:='т';
        rc2:='т';
      end else
        if R33.Text='' then begin
          R33.Text:='т';
          rc3:='т';
        end else
          if R34.Text='' then begin
            R34.Text:='т';
            rc4:='т';
          end else
            if R35.Text='' then begin
              R35.Text:='т';
              rc5:='т';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='т';
      rc1:='т';
    end else
      if R42.Text='' then begin
        R42.Text:='т';
        rc2:='т';
      end else
        if R43.Text='' then begin
          R43.Text:='т';
          rc3:='т';
        end else
          if R44.Text='' then begin
            R44.Text:='т';
            rc4:='т';
          end else
            if R45.Text='' then begin
              R45.Text:='т';
              rc5:='т';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='т';
      rc1:='т';
    end else
      if R52.Text='' then begin
        R52.Text:='т';
        rc2:='т';
      end else
        if R53.Text='' then begin
          R53.Text:='т';
          rc3:='т';
        end else
          if R54.Text='' then begin
            R54.Text:='т';
            rc4:='т';
          end else
            if R55.Text='' then begin
              R55.Text:='т';
              rc5:='т';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='т';
      rc1:='т';
    end else
      if R62.Text='' then begin
        R62.Text:='т';
        rc2:='т';
      end else
        if R63.Text='' then begin
          R63.Text:='т';
          rc3:='т';
        end else
          if R64.Text='' then begin
            R64.Text:='т';
            rc4:='т';
          end else
            if R65.Text='' then begin
              R65.Text:='т';
              rc5:='т';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.ьClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ь';
      rc1:='ь';
    end else
      if R12.Text='' then begin
        R12.Text:='ь';
        rc2:='ь';
      end else
        if R13.Text='' then begin
          R13.Text:='ь';
          rc3:='ь';
        end else
          if R14.Text='' then begin
            R14.Text:='ь';
            rc4:='ь';
          end else
            if R15.Text='' then begin
              R15.Text:='ь';
              rc5:='ь';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ь';
      rc1:='ь';
    end else
      if R22.Text='' then begin
        R22.Text:='ь';
        rc2:='ь';
      end else
        if R23.Text='' then begin
          R23.Text:='ь';
          rc3:='ь';
        end else
          if R24.Text='' then begin
            R24.Text:='ь';
            rc4:='ь';
          end else
            if R25.Text='' then begin
              R25.Text:='ь';
              rc5:='ь';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ь';
      rc1:='ь';
    end else
      if R32.Text='' then begin
        R32.Text:='ь';
        rc2:='ь';
      end else
        if R33.Text='' then begin
          R33.Text:='ь';
          rc3:='ь';
        end else
          if R34.Text='' then begin
            R34.Text:='ь';
            rc4:='ь';
          end else
            if R35.Text='' then begin
              R35.Text:='ь';
              rc5:='ь';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ь';
      rc1:='ь';
    end else
      if R42.Text='' then begin
        R42.Text:='ь';
        rc2:='ь';
      end else
        if R43.Text='' then begin
          R43.Text:='ь';
          rc3:='ь';
        end else
          if R44.Text='' then begin
            R44.Text:='ь';
            rc4:='ь';
          end else
            if R45.Text='' then begin
              R45.Text:='ь';
              rc5:='ь';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ь';
      rc1:='ь';
    end else
      if R52.Text='' then begin
        R52.Text:='ь';
        rc2:='ь';
      end else
        if R53.Text='' then begin
          R53.Text:='ь';
          rc3:='ь';
        end else
          if R54.Text='' then begin
            R54.Text:='ь';
            rc4:='ь';
          end else
            if R55.Text='' then begin
              R55.Text:='ь';
              rc5:='ь';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ь';
      rc1:='ь';
    end else
      if R62.Text='' then begin
        R62.Text:='ь';
        rc2:='ь';
      end else
        if R63.Text='' then begin
          R63.Text:='ь';
          rc3:='ь';
        end else
          if R64.Text='' then begin
            R64.Text:='ь';
            rc4:='ь';
          end else
            if R65.Text='' then begin
              R65.Text:='ь';
              rc5:='ь';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.бClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='б';
      rc1:='б';
    end else
      if R12.Text='' then begin
        R12.Text:='б';
        rc2:='б';
      end else
        if R13.Text='' then begin
          R13.Text:='б';
          rc3:='б';
        end else
          if R14.Text='' then begin
            R14.Text:='б';
            rc4:='б';
          end else
            if R15.Text='' then begin
              R15.Text:='б';
              rc5:='б';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='б';
      rc1:='б';
    end else
      if R22.Text='' then begin
        R22.Text:='б';
        rc2:='б';
      end else
        if R23.Text='' then begin
          R23.Text:='б';
          rc3:='б';
        end else
          if R24.Text='' then begin
            R24.Text:='б';
            rc4:='б';
          end else
            if R25.Text='' then begin
              R25.Text:='б';
              rc5:='б';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='б';
      rc1:='б';
    end else
      if R32.Text='' then begin
        R32.Text:='б';
        rc2:='б';
      end else
        if R33.Text='' then begin
          R33.Text:='б';
          rc3:='б';
        end else
          if R34.Text='' then begin
            R34.Text:='б';
            rc4:='б';
          end else
            if R35.Text='' then begin
              R35.Text:='б';
              rc5:='б';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='б';
      rc1:='б';
    end else
      if R42.Text='' then begin
        R42.Text:='б';
        rc2:='б';
      end else
        if R43.Text='' then begin
          R43.Text:='б';
          rc3:='б';
        end else
          if R44.Text='' then begin
            R44.Text:='б';
            rc4:='б';
          end else
            if R45.Text='' then begin
              R45.Text:='б';
              rc5:='б';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='б';
      rc1:='б';
    end else
      if R52.Text='' then begin
        R52.Text:='б';
        rc2:='б';
      end else
        if R53.Text='' then begin
          R53.Text:='б';
          rc3:='б';
        end else
          if R54.Text='' then begin
            R54.Text:='б';
            rc4:='б';
          end else
            if R55.Text='' then begin
              R55.Text:='б';
              rc5:='б';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='б';
      rc1:='б';
    end else
      if R62.Text='' then begin
        R62.Text:='б';
        rc2:='б';
      end else
        if R63.Text='' then begin
          R63.Text:='б';
          rc3:='б';
        end else
          if R64.Text='' then begin
            R64.Text:='б';
            rc4:='б';
          end else
            if R65.Text='' then begin
              R65.Text:='б';
              rc5:='б';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.юClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ю';
      rc1:='ю';
    end else
      if R12.Text='' then begin
        R12.Text:='ю';
        rc2:='ю';
      end else
        if R13.Text='' then begin
          R13.Text:='ю';
          rc3:='ю';
        end else
          if R14.Text='' then begin
            R14.Text:='ю';
            rc4:='ю';
          end else
            if R15.Text='' then begin
              R15.Text:='ю';
              rc5:='ю';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ю';
      rc1:='ю';
    end else
      if R22.Text='' then begin
        R22.Text:='ю';
        rc2:='ю';
      end else
        if R23.Text='' then begin
          R23.Text:='ю';
          rc3:='ю';
        end else
          if R24.Text='' then begin
            R24.Text:='ю';
            rc4:='ю';
          end else
            if R25.Text='' then begin
              R25.Text:='ю';
              rc5:='ю';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ю';
      rc1:='ю';
    end else
      if R32.Text='' then begin
        R32.Text:='ю';
        rc2:='ю';
      end else
        if R33.Text='' then begin
          R33.Text:='ю';
          rc3:='ю';
        end else
          if R34.Text='' then begin
            R34.Text:='ю';
            rc4:='ю';
          end else
            if R35.Text='' then begin
              R35.Text:='ю';
              rc5:='ю';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ю';
      rc1:='ю';
    end else
      if R42.Text='' then begin
        R42.Text:='ю';
        rc2:='ю';
      end else
        if R43.Text='' then begin
          R43.Text:='ю';
          rc3:='ю';
        end else
          if R44.Text='' then begin
            R44.Text:='ю';
            rc4:='ю';
          end else
            if R45.Text='' then begin
              R45.Text:='ю';
              rc5:='ю';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ю';
      rc1:='ю';
    end else
      if R52.Text='' then begin
        R52.Text:='ю';
        rc2:='ю';
      end else
        if R53.Text='' then begin
          R53.Text:='ю';
          rc3:='ю';
        end else
          if R54.Text='' then begin
            R54.Text:='ю';
            rc4:='ю';
          end else
            if R55.Text='' then begin
              R55.Text:='ю';
              rc5:='ю';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ю';
      rc1:='ю';
    end else
      if R62.Text='' then begin
        R62.Text:='ю';
        rc2:='ю';
      end else
        if R63.Text='' then begin
          R63.Text:='ю';
          rc3:='ю';
        end else
          if R64.Text='' then begin
            R64.Text:='ю';
            rc4:='ю';
          end else
            if R65.Text='' then begin
              R65.Text:='ю';
              rc5:='ю';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.жClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ж';
      rc1:='ж';
    end else
      if R12.Text='' then begin
        R12.Text:='ж';
        rc2:='ж';
      end else
        if R13.Text='' then begin
          R13.Text:='ж';
          rc3:='ж';
        end else
          if R14.Text='' then begin
            R14.Text:='ж';
            rc4:='ж';
          end else
            if R15.Text='' then begin
              R15.Text:='ж';
              rc5:='ж';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ж';
      rc1:='ж';
    end else
      if R22.Text='' then begin
        R22.Text:='ж';
        rc2:='ж';
      end else
        if R23.Text='' then begin
          R23.Text:='ж';
          rc3:='ж';
        end else
          if R24.Text='' then begin
            R24.Text:='ж';
            rc4:='ж';
          end else
            if R25.Text='' then begin
              R25.Text:='ж';
              rc5:='ж';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ж';
      rc1:='ж';
    end else
      if R32.Text='' then begin
        R32.Text:='ж';
        rc2:='ж';
      end else
        if R33.Text='' then begin
          R33.Text:='ж';
          rc3:='ж';
        end else
          if R34.Text='' then begin
            R34.Text:='ж';
            rc4:='ж';
          end else
            if R35.Text='' then begin
              R35.Text:='ж';
              rc5:='ж';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ж';
      rc1:='ж';
    end else
      if R42.Text='' then begin
        R42.Text:='ж';
        rc2:='ж';
      end else
        if R43.Text='' then begin
          R43.Text:='ж';
          rc3:='ж';
        end else
          if R44.Text='' then begin
            R44.Text:='ж';
            rc4:='ж';
          end else
            if R45.Text='' then begin
              R45.Text:='ж';
              rc5:='ж';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ж';
      rc1:='ж';
    end else
      if R52.Text='' then begin
        R52.Text:='ж';
        rc2:='ж';
      end else
        if R53.Text='' then begin
          R53.Text:='ж';
          rc3:='ж';
        end else
          if R54.Text='' then begin
            R54.Text:='ж';
            rc4:='ж';
          end else
            if R55.Text='' then begin
              R55.Text:='ж';
              rc5:='ж';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ж';
      rc1:='ж';
    end else
      if R62.Text='' then begin
        R62.Text:='ж';
        rc2:='ж';
      end else
        if R63.Text='' then begin
          R63.Text:='ж';
          rc3:='ж';
        end else
          if R64.Text='' then begin
            R64.Text:='ж';
            rc4:='ж';
          end else
            if R65.Text='' then begin
              R65.Text:='ж';
              rc5:='ж';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.ёClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ё';
      rc1:='ё';
    end else
      if R12.Text='' then begin
        R12.Text:='ё';
        rc2:='ё';
      end else
        if R13.Text='' then begin
          R13.Text:='ё';
          rc3:='ё';
        end else
          if R14.Text='' then begin
            R14.Text:='ё';
            rc4:='ё';
          end else
            if R15.Text='' then begin
              R15.Text:='ё';
              rc5:='ё';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ё';
      rc1:='ё';
    end else
      if R22.Text='' then begin
        R22.Text:='ё';
        rc2:='ё';
      end else
        if R23.Text='' then begin
          R23.Text:='ё';
          rc3:='ё';
        end else
          if R24.Text='' then begin
            R24.Text:='ё';
            rc4:='ё';
          end else
            if R25.Text='' then begin
              R25.Text:='ё';
              rc5:='ё';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ё';
      rc1:='ё';
    end else
      if R32.Text='' then begin
        R32.Text:='ё';
        rc2:='ё';
      end else
        if R33.Text='' then begin
          R33.Text:='ё';
          rc3:='ё';
        end else
          if R34.Text='' then begin
            R34.Text:='ё';
            rc4:='ё';
          end else
            if R35.Text='' then begin
              R35.Text:='ё';
              rc5:='ё';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ё';
      rc1:='ё';
    end else
      if R42.Text='' then begin
        R42.Text:='ё';
        rc2:='ё';
      end else
        if R43.Text='' then begin
          R43.Text:='ё';
          rc3:='ё';
        end else
          if R44.Text='' then begin
            R44.Text:='ё';
            rc4:='ё';
          end else
            if R45.Text='' then begin
              R45.Text:='ё';
              rc5:='ё';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ё';
      rc1:='ё';
    end else
      if R52.Text='' then begin
        R52.Text:='ё';
        rc2:='ё';
      end else
        if R53.Text='' then begin
          R53.Text:='ё';
          rc3:='ё';
        end else
          if R54.Text='' then begin
            R54.Text:='ё';
            rc4:='ё';
          end else
            if R55.Text='' then begin
              R55.Text:='ё';
              rc5:='ё';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ё';
      rc1:='ё';
    end else
      if R62.Text='' then begin
        R62.Text:='ё';
        rc2:='ё';
      end else
        if R63.Text='' then begin
          R63.Text:='ё';
          rc3:='ё';
        end else
          if R64.Text='' then begin
            R64.Text:='ё';
            rc4:='ё';
          end else
            if R65.Text='' then begin
              R65.Text:='ё';
              rc5:='ё';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.хClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='х';
      rc1:='х';
    end else
      if R12.Text='' then begin
        R12.Text:='х';
        rc2:='х';
      end else
        if R13.Text='' then begin
          R13.Text:='х';
          rc3:='х';
        end else
          if R14.Text='' then begin
            R14.Text:='х';
            rc4:='х';
          end else
            if R15.Text='' then begin
              R15.Text:='х';
              rc5:='х';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='х';
      rc1:='х';
    end else
      if R22.Text='' then begin
        R22.Text:='х';
        rc2:='х';
      end else
        if R23.Text='' then begin
          R23.Text:='х';
          rc3:='х';
        end else
          if R24.Text='' then begin
            R24.Text:='х';
            rc4:='х';
          end else
            if R25.Text='' then begin
              R25.Text:='х';
              rc5:='х';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='х';
      rc1:='х';
    end else
      if R32.Text='' then begin
        R32.Text:='х';
        rc2:='х';
      end else
        if R33.Text='' then begin
          R33.Text:='х';
          rc3:='х';
        end else
          if R34.Text='' then begin
            R34.Text:='х';
            rc4:='х';
          end else
            if R35.Text='' then begin
              R35.Text:='х';
              rc5:='х';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='х';
      rc1:='х';
    end else
      if R42.Text='' then begin
        R42.Text:='х';
        rc2:='х';
      end else
        if R43.Text='' then begin
          R43.Text:='х';
          rc3:='х';
        end else
          if R44.Text='' then begin
            R44.Text:='х';
            rc4:='х';
          end else
            if R45.Text='' then begin
              R45.Text:='х';
              rc5:='х';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='х';
      rc1:='х';
    end else
      if R52.Text='' then begin
        R52.Text:='х';
        rc2:='х';
      end else
        if R53.Text='' then begin
          R53.Text:='х';
          rc3:='х';
        end else
          if R54.Text='' then begin
            R54.Text:='х';
            rc4:='х';
          end else
            if R55.Text='' then begin
              R55.Text:='х';
              rc5:='х';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='х';
      rc1:='х';
    end else
      if R62.Text='' then begin
        R62.Text:='х';
        rc2:='х';
      end else
        if R63.Text='' then begin
          R63.Text:='х';
          rc3:='х';
        end else
          if R64.Text='' then begin
            R64.Text:='х';
            rc4:='х';
          end else
            if R65.Text='' then begin
              R65.Text:='х';
              rc5:='х';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.эClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='э';
      rc1:='э';
    end else
      if R12.Text='' then begin
        R12.Text:='э';
        rc2:='э';
      end else
        if R13.Text='' then begin
          R13.Text:='э';
          rc3:='э';
        end else
          if R14.Text='' then begin
            R14.Text:='э';
            rc4:='э';
          end else
            if R15.Text='' then begin
              R15.Text:='э';
              rc5:='э';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='э';
      rc1:='э';
    end else
      if R22.Text='' then begin
        R22.Text:='э';
        rc2:='э';
      end else
        if R23.Text='' then begin
          R23.Text:='э';
          rc3:='э';
        end else
          if R24.Text='' then begin
            R24.Text:='э';
            rc4:='э';
          end else
            if R25.Text='' then begin
              R25.Text:='э';
              rc5:='э';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='э';
      rc1:='э';
    end else
      if R32.Text='' then begin
        R32.Text:='э';
        rc2:='э';
      end else
        if R33.Text='' then begin
          R33.Text:='э';
          rc3:='э';
        end else
          if R34.Text='' then begin
            R34.Text:='э';
            rc4:='э';
          end else
            if R35.Text='' then begin
              R35.Text:='э';
              rc5:='э';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='э';
      rc1:='э';
    end else
      if R42.Text='' then begin
        R42.Text:='э';
        rc2:='э';
      end else
        if R43.Text='' then begin
          R43.Text:='э';
          rc3:='э';
        end else
          if R44.Text='' then begin
            R44.Text:='э';
            rc4:='э';
          end else
            if R45.Text='' then begin
              R45.Text:='э';
              rc5:='э';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='э';
      rc1:='э';
    end else
      if R52.Text='' then begin
        R52.Text:='э';
        rc2:='э';
      end else
        if R53.Text='' then begin
          R53.Text:='э';
          rc3:='э';
        end else
          if R54.Text='' then begin
            R54.Text:='э';
            rc4:='э';
          end else
            if R55.Text='' then begin
              R55.Text:='э';
              rc5:='э';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='э';
      rc1:='э';
    end else
      if R62.Text='' then begin
        R62.Text:='э';
        rc2:='э';
      end else
        if R63.Text='' then begin
          R63.Text:='э';
          rc3:='э';
        end else
          if R64.Text='' then begin
            R64.Text:='э';
            rc4:='э';
          end else
            if R65.Text='' then begin
              R65.Text:='э';
              rc5:='э';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.ъClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ъ';
      rc1:='ъ';
    end else
      if R12.Text='' then begin
        R12.Text:='ъ';
        rc2:='ъ';
      end else
        if R13.Text='' then begin
          R13.Text:='ъ';
          rc3:='ъ';
        end else
          if R14.Text='' then begin
            R14.Text:='ъ';
            rc4:='ъ';
          end else
            if R15.Text='' then begin
              R15.Text:='ъ';
              rc5:='ъ';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ъ';
      rc1:='ъ';
    end else
      if R22.Text='' then begin
        R22.Text:='ъ';
        rc2:='ъ';
      end else
        if R23.Text='' then begin
          R23.Text:='ъ';
          rc3:='ъ';
        end else
          if R24.Text='' then begin
            R24.Text:='ъ';
            rc4:='ъ';
          end else
            if R25.Text='' then begin
              R25.Text:='ъ';
              rc5:='ъ';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ъ';
      rc1:='ъ';
    end else
      if R32.Text='' then begin
        R32.Text:='ъ';
        rc2:='ъ';
      end else
        if R33.Text='' then begin
          R33.Text:='ъ';
          rc3:='ъ';
        end else
          if R34.Text='' then begin
            R34.Text:='ъ';
            rc4:='ъ';
          end else
            if R35.Text='' then begin
              R35.Text:='ъ';
              rc5:='ъ';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ъ';
      rc1:='ъ';
    end else
      if R42.Text='' then begin
        R42.Text:='ъ';
        rc2:='ъ';
      end else
        if R43.Text='' then begin
          R43.Text:='ъ';
          rc3:='ъ';
        end else
          if R44.Text='' then begin
            R44.Text:='ъ';
            rc4:='ъ';
          end else
            if R45.Text='' then begin
              R45.Text:='ъ';
              rc5:='ъ';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ъ';
      rc1:='ъ';
    end else
      if R52.Text='' then begin
        R52.Text:='ъ';
        rc2:='ъ';
      end else
        if R53.Text='' then begin
          R53.Text:='ъ';
          rc3:='ъ';
        end else
          if R54.Text='' then begin
            R54.Text:='ъ';
            rc4:='ъ';
          end else
            if R55.Text='' then begin
              R55.Text:='ъ';
              rc5:='ъ';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ъ';
      rc1:='ъ';
    end else
      if R62.Text='' then begin
        R62.Text:='ъ';
        rc2:='ъ';
      end else
        if R63.Text='' then begin
          R63.Text:='ъ';
          rc3:='ъ';
        end else
          if R64.Text='' then begin
            R64.Text:='ъ';
            rc4:='ъ';
          end else
            if R65.Text='' then begin
              R65.Text:='ъ';
              rc5:='ъ';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.startClick(Sender: TObject);
begin
  InfoLabel.TextSettings.FontColor:=TAlphaColorRec.Black;
  delete.Enabled:=true;
  enter.Enabled:=true;
  k:=random(length(voc))+1;
  InfoLabel.Text:='Погнали!';
  otvet:='';
  for i:=1 to 5 do begin
    ask[i]:=0;
    ques[i]:=0;
  end;

  for I := 1 to 33 do
    keys[i].TextSettings.FontColor:=TAlphaColorRec.Black;

  rc1:=#0; rc2:=#0; rc3:=#0; rc4:=#0; rc5:=#0;
  row:='';
  words[1]:=''; words[2]:=''; words[3]:=''; words[4]:=''; words[5]:=''; words[6]:='';

  R11.Text:='';  R12.Text:='';  R13.Text:='';  R14.Text:='';  R15.Text:='';
  R21.Text:='';  R22.Text:='';  R23.Text:='';  R24.Text:='';  R25.Text:='';
  R31.Text:='';  R32.Text:='';  R33.Text:='';  R34.Text:='';  R35.Text:='';
  R41.Text:='';  R42.Text:='';  R43.Text:='';  R44.Text:='';  R45.Text:='';
  R51.Text:='';  R52.Text:='';  R53.Text:='';  R54.Text:='';  R55.Text:='';
  R61.Text:='';  R62.Text:='';  R63.Text:='';  R64.Text:='';  R65.Text:='';

  R11.TextSettings.FontColor:=TAlphaColorRec.Black;
  R12.TextSettings.FontColor:=TAlphaColorRec.Black;
  R13.TextSettings.FontColor:=TAlphaColorRec.Black;
  R14.TextSettings.FontColor:=TAlphaColorRec.Black;
  R15.TextSettings.FontColor:=TAlphaColorRec.Black;

  R21.TextSettings.FontColor:=TAlphaColorRec.Black;
  R22.TextSettings.FontColor:=TAlphaColorRec.Black;
  R23.TextSettings.FontColor:=TAlphaColorRec.Black;
  R24.TextSettings.FontColor:=TAlphaColorRec.Black;
  R25.TextSettings.FontColor:=TAlphaColorRec.Black;

  R31.TextSettings.FontColor:=TAlphaColorRec.Black;
  R32.TextSettings.FontColor:=TAlphaColorRec.Black;
  R33.TextSettings.FontColor:=TAlphaColorRec.Black;
  R34.TextSettings.FontColor:=TAlphaColorRec.Black;
  R35.TextSettings.FontColor:=TAlphaColorRec.Black;

  R41.TextSettings.FontColor:=TAlphaColorRec.Black;
  R42.TextSettings.FontColor:=TAlphaColorRec.Black;
  R43.TextSettings.FontColor:=TAlphaColorRec.Black;
  R44.TextSettings.FontColor:=TAlphaColorRec.Black;
  R45.TextSettings.FontColor:=TAlphaColorRec.Black;

  R51.TextSettings.FontColor:=TAlphaColorRec.Black;
  R52.TextSettings.FontColor:=TAlphaColorRec.Black;
  R53.TextSettings.FontColor:=TAlphaColorRec.Black;
  R54.TextSettings.FontColor:=TAlphaColorRec.Black;
  R55.TextSettings.FontColor:=TAlphaColorRec.Black;

  R61.TextSettings.FontColor:=TAlphaColorRec.Black;
  R62.TextSettings.FontColor:=TAlphaColorRec.Black;
  R63.TextSettings.FontColor:=TAlphaColorRec.Black;
  R64.TextSettings.FontColor:=TAlphaColorRec.Black;
  R65.TextSettings.FontColor:=TAlphaColorRec.Black;
end;

procedure TForm2.deleteClick(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then begin
  R11.TextSettings.FontColor:=TAlphaColorRec.Black;
  R12.TextSettings.FontColor:=TAlphaColorRec.Black;
  R13.TextSettings.FontColor:=TAlphaColorRec.Black;
  R14.TextSettings.FontColor:=TAlphaColorRec.Black;
  R15.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R15.Text<>'' then begin
    R15.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R14.Text<>'' then begin
      R14.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R13.Text<>'' then begin
        R13.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R12.Text<>'' then begin
          R12.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R11.Text<>'' then begin
            R11.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
  end else if words[2]='' then begin
  R21.TextSettings.FontColor:=TAlphaColorRec.Black;
  R22.TextSettings.FontColor:=TAlphaColorRec.Black;
  R23.TextSettings.FontColor:=TAlphaColorRec.Black;
  R24.TextSettings.FontColor:=TAlphaColorRec.Black;
  R25.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R25.Text<>'' then begin
    R25.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R24.Text<>'' then begin
      R24.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R23.Text<>'' then begin
        R23.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R22.Text<>'' then begin
          R22.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R21.Text<>'' then begin
            R21.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
        end else if words[3]='' then begin
  R31.TextSettings.FontColor:=TAlphaColorRec.Black;
  R32.TextSettings.FontColor:=TAlphaColorRec.Black;
  R33.TextSettings.FontColor:=TAlphaColorRec.Black;
  R34.TextSettings.FontColor:=TAlphaColorRec.Black;
  R35.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R35.Text<>'' then begin
    R35.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R34.Text<>'' then begin
      R34.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R33.Text<>'' then begin
        R33.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R32.Text<>'' then begin
          R32.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R31.Text<>'' then begin
            R31.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
        end else if words[4]='' then begin
  R41.TextSettings.FontColor:=TAlphaColorRec.Black;
  R42.TextSettings.FontColor:=TAlphaColorRec.Black;
  R43.TextSettings.FontColor:=TAlphaColorRec.Black;
  R44.TextSettings.FontColor:=TAlphaColorRec.Black;
  R45.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R45.Text<>'' then begin
    R45.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R44.Text<>'' then begin
      R44.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R43.Text<>'' then begin
        R43.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R42.Text<>'' then begin
          R42.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R41.Text<>'' then begin
            R41.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
        end else if words[5]='' then begin
  R51.TextSettings.FontColor:=TAlphaColorRec.Black;
  R52.TextSettings.FontColor:=TAlphaColorRec.Black;
  R53.TextSettings.FontColor:=TAlphaColorRec.Black;
  R54.TextSettings.FontColor:=TAlphaColorRec.Black;
  R55.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R55.Text<>'' then begin
    R55.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R54.Text<>'' then begin
      R54.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R53.Text<>'' then begin
        R53.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R52.Text<>'' then begin
          R52.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R51.Text<>'' then begin
            R51.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
        end else if words[6]='' then begin
  R61.TextSettings.FontColor:=TAlphaColorRec.Black;
  R62.TextSettings.FontColor:=TAlphaColorRec.Black;
  R63.TextSettings.FontColor:=TAlphaColorRec.Black;
  R64.TextSettings.FontColor:=TAlphaColorRec.Black;
  R65.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R65.Text<>'' then begin
    R65.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R64.Text<>'' then begin
      R64.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R63.Text<>'' then begin
        R63.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R62.Text<>'' then begin
          R62.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R61.Text<>'' then begin
            R61.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
  end;

end;

procedure TForm2.enterClick(Sender: TObject);
begin
  if rc5<>#0 then begin
    InfoLabel.Text:='';
    j:=1;
    f:=false;
    check:=voc[k];       //слово на проверку check
    while (j<1551) and (f=false) do begin
      if voc[j]=row then
        f:=true;
      j:=j+1;
    end;
    for i:=1 to 5 do begin
      ask[i]:=0;
      ques[i]:=0;
    end;
    if f=true then begin
      if words[1]='' then begin
        rc1:=#0;
        rc2:=#0;
        rc3:=#0;
        rc4:=#0;
        rc5:=#0;
        words[1]:=row;
        matches(check,row);
        if ask[1]=2 then R11.TextSettings.FontColor:=TAlphaColorRec.Green;
        if ask[2]=2 then R12.TextSettings.FontColor:=TAlphaColorRec.Green;
        if ask[3]=2 then R13.TextSettings.FontColor:=TAlphaColorRec.Green;
        if ask[4]=2 then R14.TextSettings.FontColor:=TAlphaColorRec.Green;
        if ask[5]=2 then R15.TextSettings.FontColor:=TAlphaColorRec.Green;
        if ask[1]=1 then R11.TextSettings.FontColor:=TAlphaColorRec.Yellow;
        if ask[2]=1 then R12.TextSettings.FontColor:=TAlphaColorRec.Yellow;
        if ask[3]=1 then R13.TextSettings.FontColor:=TAlphaColorRec.Yellow;
        if ask[4]=1 then R14.TextSettings.FontColor:=TAlphaColorRec.Yellow;
        if ask[5]=1 then R15.TextSettings.FontColor:=TAlphaColorRec.Yellow;
        for j := 1 to 5 do
          for i := 1 to 32 do
            if (ord(row[j])=223+i) then
              if ask[j]=2 then
                keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                    else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) then
                      keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
        for j := 1 to 5 do
          if (row[j]='ё') then
            if ask[j]=2 then
              keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
              else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                  else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                    keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
      infoLabel.Text:='Поздравляем!';
      end else if words[2]='' then begin
          rc1:=#0;
          rc2:=#0;
          rc3:=#0;
          rc4:=#0;
          rc5:=#0;
          words[2]:=row;
          matches(check,row);
          if ask[1]=2 then R21.TextSettings.FontColor:=TAlphaColorRec.Green;
          if ask[2]=2 then R22.TextSettings.FontColor:=TAlphaColorRec.Green;
          if ask[3]=2 then R23.TextSettings.FontColor:=TAlphaColorRec.Green;
          if ask[4]=2 then R24.TextSettings.FontColor:=TAlphaColorRec.Green;
          if ask[5]=2 then R25.TextSettings.FontColor:=TAlphaColorRec.Green;
          if ask[1]=1 then R21.TextSettings.FontColor:=TAlphaColorRec.Yellow;
          if ask[2]=1 then R22.TextSettings.FontColor:=TAlphaColorRec.Yellow;
          if ask[3]=1 then R23.TextSettings.FontColor:=TAlphaColorRec.Yellow;
          if ask[4]=1 then R24.TextSettings.FontColor:=TAlphaColorRec.Yellow;
          if ask[5]=1 then R25.TextSettings.FontColor:=TAlphaColorRec.Yellow;
          for j := 1 to 5 do
          for i := 1 to 32 do
            if (ord(row[j])=223+i) then
              if ask[j]=2 then
                keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                    else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                      keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
          for j := 1 to 5 do
            if (row[j]='ё') then
              if ask[j]=2 then
                keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                    else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                      keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
          infoLabel.Text:='Поздравляем!';
          end else if words[3]='' then begin
              rc1:=#0;
              rc2:=#0;
              rc3:=#0;
              rc4:=#0;
              rc5:=#0;
              words[3]:=row;
              matches(check,row);
              if ask[1]=2 then R31.TextSettings.FontColor:=TAlphaColorRec.Green;
              if ask[2]=2 then R32.TextSettings.FontColor:=TAlphaColorRec.Green;
              if ask[3]=2 then R33.TextSettings.FontColor:=TAlphaColorRec.Green;
              if ask[4]=2 then R34.TextSettings.FontColor:=TAlphaColorRec.Green;
              if ask[5]=2 then R35.TextSettings.FontColor:=TAlphaColorRec.Green;
              if ask[1]=1 then R31.TextSettings.FontColor:=TAlphaColorRec.Yellow;
              if ask[2]=1 then R32.TextSettings.FontColor:=TAlphaColorRec.Yellow;
              if ask[3]=1 then R33.TextSettings.FontColor:=TAlphaColorRec.Yellow;
              if ask[4]=1 then R34.TextSettings.FontColor:=TAlphaColorRec.Yellow;
              if ask[5]=1 then R35.TextSettings.FontColor:=TAlphaColorRec.Yellow;
              for j := 1 to 5 do
                for i := 1 to 32 do
                  if (ord(row[j])=223+i) then
                    if ask[j]=2 then
                      keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                      else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                        keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                          else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                            keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                        for j := 1 to 5 do
              if (row[j]='ё') then
                if ask[j]=2 then
                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                  else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                    keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                      else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                        keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
              infoLabel.Text:='Поздравляем!';
              end else if words[4]='' then begin
                  rc1:=#0;
                  rc2:=#0;
                  rc3:=#0;
                  rc4:=#0;
                  rc5:=#0;
                  words[4]:=row;
                  matches(check,row);
                  if ask[1]=2 then R41.TextSettings.FontColor:=TAlphaColorRec.Green;
                  if ask[2]=2 then R42.TextSettings.FontColor:=TAlphaColorRec.Green;
                  if ask[3]=2 then R43.TextSettings.FontColor:=TAlphaColorRec.Green;
                  if ask[4]=2 then R44.TextSettings.FontColor:=TAlphaColorRec.Green;
                  if ask[5]=2 then R45.TextSettings.FontColor:=TAlphaColorRec.Green;
                  if ask[1]=1 then R41.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                  if ask[2]=1 then R42.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                  if ask[3]=1 then R43.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                  if ask[4]=1 then R44.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                  if ask[5]=1 then R45.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                  for j := 1 to 5 do
                    for i := 1 to 32 do
                      if (ord(row[j])=223+i) then
                        if ask[j]=2 then
                          keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                          else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                            keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                              else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                  for j := 1 to 5 do
                    if (row[j]='ё') then
                      if ask[j]=2 then
                        keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                        else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                          keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                            else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                              keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                  infoLabel.Text:='Поздравляем!';
                  end else if words[5]='' then begin
                      rc1:=#0;
                      rc2:=#0;
                      rc3:=#0;
                      rc4:=#0;
                      rc5:=#0;
                      words[5]:=row;
                      matches(check,row);
                      if ask[1]=2 then R51.TextSettings.FontColor:=TAlphaColorRec.Green;
                      if ask[2]=2 then R52.TextSettings.FontColor:=TAlphaColorRec.Green;
                      if ask[3]=2 then R53.TextSettings.FontColor:=TAlphaColorRec.Green;
                      if ask[4]=2 then R54.TextSettings.FontColor:=TAlphaColorRec.Green;
                      if ask[5]=2 then R55.TextSettings.FontColor:=TAlphaColorRec.Green;
                      if ask[1]=1 then R51.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                      if ask[2]=1 then R52.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                      if ask[3]=1 then R53.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                      if ask[4]=1 then R54.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                      if ask[5]=1 then R55.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                      for j := 1 to 5 do
                        for i := 1 to 32 do
                          if (ord(row[j])=223+i) then
                            if ask[j]=2 then
                              keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                              else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                                  else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                    keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                      for j := 1 to 5 do
                        if (row[j]='ё') then
                          if ask[j]=2 then
                            keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                            else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                              keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                                else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                  keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                      infoLabel.Text:='Поздравляем!';
                      end else if words[6]='' then begin
                          rc1:=#0;
                          rc2:=#0;
                          rc3:=#0;
                          rc4:=#0;
                          rc5:=#0;
                          words[6]:=row;
                          matches(check,row);
                          if ask[1]=2 then R61.TextSettings.FontColor:=TAlphaColorRec.Green;
                          if ask[2]=2 then R62.TextSettings.FontColor:=TAlphaColorRec.Green;
                          if ask[3]=2 then R63.TextSettings.FontColor:=TAlphaColorRec.Green;
                          if ask[4]=2 then R64.TextSettings.FontColor:=TAlphaColorRec.Green;
                          if ask[5]=2 then R65.TextSettings.FontColor:=TAlphaColorRec.Green;
                          if ask[1]=1 then R61.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                          if ask[2]=1 then R62.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                          if ask[3]=1 then R63.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                          if ask[4]=1 then R64.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                          if ask[5]=1 then R65.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                          for j := 1 to 5 do
                            for i := 1 to 32 do
                              if (ord(row[j])=223+i) then
                                if ask[j]=2 then
                                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                                  else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                    keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                                      else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                        keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                          for j := 1 to 5 do
                            if (row[j]='ё') then
                              if ask[j]=2 then
                                keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                                else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                                    else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                      keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                          infoLabel.Text:='Поздравляем!';
                          end
        end else begin
            InfoLabel.TextSettings.FontColor:=TAlphaColorRec.Red;
            InfoLabel.Text:='Такого слова не существует';
            end;
  end;
  if (words[6]<>'') and (words[6]<>check) then
    InfoLabel.Text:='Увы и ах, мой дорогой. Это было слово '+check;
  if row=check then begin
    inc(wins);
    stats.Text:=inttostr(wins);
  end;
  if True then

end;


end.
