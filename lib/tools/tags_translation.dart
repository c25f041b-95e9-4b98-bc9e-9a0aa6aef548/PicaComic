// The purpose of this file is to translate tags

// Thanks:
// https://github.com/scooderic/exhentai-tags-chinese-translation
// https://www.wikipedia.org/
// https://ehwiki.org/
// https://hitomi.la/alltags-a.html
// https://translate.google.com/
// https://poe.com/
// https://nhentai.net/tags/

// 此翻译的目标是实现 **常见** tags的翻译, 冷门词语, 画师名, 团队名和角色名不在考虑之中
// 为了确保UI布局良好, 翻译会尽可能简短, 可能导致表意不准确

extension TagsTranslation on String{
  /// 静态方法, 需要传入参数, 因为需要递归
  ///
  /// 对tag进行处理后进行翻译: 代表'或'的分割符'|', 修饰词'low','focus'.
  static String _translateTags(String tag){
    if(tag.contains('|')){
      var splits = tag.split(' | ');
      return enTagsTranslations[splits[0]]??enTagsTranslations[splits[1]]??tag;
    }else if(tag.contains("low ")){
      return "弱存在${_translateTags(tag.replaceFirst("low ", ""))}";
    }else if(tag.contains("focus ")){
      return "专注${_translateTags(tag.replaceFirst("focus ", ""))}";
    }else{
      return enTagsTranslations[tag]??tag;
    }
  }
  /// translate tag's text to chinese
  String get translateTagsToCN => _translateTags(this);

  String get translateTagsCategoryToCN => tagsCategoryTranslations[this]??this;

  static const tagsCategoryTranslations = {
    "language": "语言",
    "artist": "画师",
    "male": "男性",
    "female": "女性",
    "mixed": "混合",
    "other": "其它",
    "parody": "原作",
    "character": "角色",
    "group": "团队",
    "cosplayer": "Coser",
    "reclass": "重新分类",
    "Languages": "语言",
    "Artists": "画师",
    "Characters": "角色",
    "Groups": "团队",
    "Tags": "标签",
    "Parodies": "原作",
    "Categories": "分类",
  };

  /// English to chinese translations
  static const enTagsTranslations = {
    // 标签
    "3d": "3D",
    "abortion": "堕胎",
    "absorption": "吸入",
    "adventitious penis": "不确定阴茎",
    "adventitious vagina": "不确定阴道",
    "afro": "蓬松发型",
    "age progression": "长大",
    "age regression": "变年轻",
    "ahegao": "高潮脸",
    "albino": "红瞳和极白的皮肤",
    "alien": "外星人",
    "alien girl": "外星人",
    "all the way through": "全身插入",
    "amputee": "残肢",
    "anaglyph": "红绿3D效果",
    "anal": "肛门",
    "anal birth": "从肛门生出",
    "angel": "天使",
    "animal on animal": "交媾",
    "animal on furry": "动物x怪物",
    "animated": "动画效果",
    "anorexic": "营养不良",
    "anthology": "多人作品集",
    "apron": "围裙",
    "armpit licking": "舔腋",
    "armpit sex": "腋交",
    "artbook": "画集",
    "asphyxiation": "窒息",
    "ass expansion": "膨尻",
    "assjob": "臀交",
    "aunt": "乱伦",
    "autofellatio": "自交",
    "autopaizuri": "自己乳交",
    "bald": "秃头",
    "ball sucking": "舔蛋",
    "balljob": "睾交",
    "balls expansion": "睾丸膨大",
    "bandages": "绷带",
    "bandaid": "创可贴",
    "bbm": "肥男",
    "bbw": "肥女",
    "bdsm": "性虐恋",
    "bear": "熊",
    "bear boy": "熊男孩",
    "bear girl": "熊娘",
    "beauty mark": "美人痣",
    "bee girl": "蜂娘",
    "bestiality": "兽交",
    "big areolae": "大乳晕",
    "big ass": "大屁股",
    "big balls": "大睾丸",
    "big breasts": "巨乳",
    "big clit": "大阴蒂",
    "big lips": "大嘴唇",
    "big nipples": "大乳头",
    "big penis": "大阴茎",
    "big vagina": "大阴道",
    "bike shorts": "自行车短裤",
    "bikini": "比基尼",
    "birth": "出生",
    "bisexual": "双性恋",
    "blackmail": "胁迫",
    "blind": "盲人",
    "blindfold": "遮住视线",
    "blood": "流血",
    "bloomers": "健身服",
    "blowjob": "口交",
    "blowjob face": "口交脸",
    "body modification": "身体修改",
    "body painting": "人体彩绘",
    "body swap": "交换身体",
    "body writing": "身体写字",
    "bodystocking": "连裤袜",
    "bodysuit": "紧身衣",
    "bondage": "束缚",
    "braces": "牙套",
    "brain fuck": "脑交",
    "breast expansion": "膨乳",
    "breast feeding": "哺乳",
    "breast reduction": "乳房缩小",
    "bride": "新娘",
    "brother": "兄弟同士",
    "bukkake": "颜射",
    "bull": "公牛",
    "bunny boy": "兔耳",
    "bunny girl": "兔女郎",
    "burping": "打嗝",
    "business suit": "商务着装",
    "butler": "男仆",
    "camel": "骆驼",
    "cannibalism": "秀色",
    "caption": "附加说明文字的",
    "cashier": "收银员",
    "cat": "猫",
    "catboy": "猫男孩",
    "catfight": "猫斗",
    "catgirl": "猫娘",
    "cbt": "蹂躏小鸡鸡",
    "centaur": "半人半马",
    "cervix penetration": "插入子宫",
    "chastity belt": "贞操带",
    "cheating": "出轨",
    "cheerleader": "拉拉队服",
    "chikan": "痴汉",
    "chinese dress": "中国服装",
    "chloroform": "迷奸",
    "christmas": "圣诞服",
    "clamp": "夹子",
    "clit growth": "阴蒂膨大",
    "closed eyes": "闭眼",
    "clothed paizuri": "着装乳交",
    "clown": "小丑",
    "coach": "教练",
    "cockslapping": "用鸡巴拍打他人",
    "collar": "颈圈",
    "condom": "避孕套",
    "conjoined": "连体人",
    "coprophagia": "食粪",
    "corruption": "堕落",
    "corset": "紧身衣",
    "cosplaying": "扮装",
    "cousin": "乱伦",
    "cow": "母牛",
    "cowgirl": "牛女孩",
    "cowman": "牛男孩",
    "crab": "甲壳类",
    "crossdressing": "男扮女装",
    "crotch tattoo": "胯部文身",
    "crown": "王冠",
    "cum bath": "精液浴",
    "cum in eye": "射入眼睛",
    "cum swap": "精液交换",
    "cunnilingus": "舔阴",
    "cuntboy": "有阴道的男性",
    "dakimakura": "抱枕",
    "dark nipples": "深色乳头",
    "dark sclera": "深色巩膜",
    "dark skin": "深色皮肤",
    "daughter": "女儿",
    "deepthroat": "深喉",
    "defloration": "摘花",
    "demon": "恶魔",
    "demon girl": "恶魔女孩",
    "diaper": "尿布",
    "dick growth": "鸡巴长大",
    "dickgirl on dickgirl": "扶她x扶她",
    "dickgirl on male": "扶她x男",
    "dickgirls only": "仅扶她",
    "dicknipples": "乳头是鸡巴",
    "dilf": "大叔",
    "dinosaur": "恐龙",
    "dismantling": "拆解",
    "dog": "狗",
    "dog boy": "狗男孩",
    "dog girl": "犬娘",
    "doll joints": "玩具关节",
    "dolphin": "海豚",
    "donkey": "驴",
    "double anal": "一洞双插",
    "double blowjob": "一洞双插",
    "double penetration": "双洞齐开",
    "double vaginal": "一洞双插",
    "dougi": "日本武士服",
    "draenei": "德莱尼",
    "dragon": "龙",
    "drugs": "麻醉药",
    "drunk": "醉酒",
    "ear fuck": "耳交",
    "eel": "鳗鱼",
    "eggs": "产卵",
    "electric shocks": "电击",
    "elephant": "大象",
    "elf": "精灵",
    "emotionless sex": "无快感性行为",
    "enema": "灌肠",
    "exhibitionism": "暴露癖",
    "eye penetration": "眼交",
    "eyemask": "眼罩",
    "eyepatch": "眼罩",
    "facesitting": "颜面骑乘",
    "fairy": "妖精",
    "farting": "放屁",
    "father": "乱伦",
    "females only": "只有女性",
    "femdom": "调教",
    "feminization": "女性化",
    "ffm threesome": "女女男3P",
    "fft threesome": "二女一TS3P",
    "figure": "手办",
    "filming": "录像中",
    "fingering": "指插",
    "first person perspective": "第一人称",
    "fish": "鱼",
    "fisting": "拳交",
    "foot insertion": "用脚插入",
    "foot licking": "舔足",
    "footjob": "足交",
    "forniphilia": "物化",
    "fox": "狐狸",
    "fox boy": "狐狸男孩",
    "fox girl": "狐娘",
    "freckles": "雀斑",
    "frog": "青蛙",
    "frog girl": "青蛙娘",
    "frottage": "拼刺刀",
    "full body tattoo": "全身文身",
    "full censorship": "全马赛克",
    "full color": "全彩",
    "fundoshi": "褌",
    "furry": "兽控",
    "futanari": "扶她",
    "gag": "堵嘴",
    "game sprite": "游戏画面",
    "gaping": "泛指",
    "garter belt": "袜带",
    "gasmask": "防毒面具",
    "gender bender": "性转换",
    "ghost": "幽灵",
    "giant": "巨人",
    "giantess": "女巨人",
    "gigantic breasts": "超巨乳",
    "gijinka": "拟人化",
    "glasses": "眼镜",
    "glory hole": "光荣洞",
    "goat": "山羊",
    "goblin": "哥布林",
    "gokkun": "吞精",
    "gorilla": "猩猩",
    "gothic lolita": "哥特洛丽塔",
    "granddaughter": "孙女",
    "grandfather": "乱伦",
    "grandmother": "祖母",
    "growth": "巨大化",
    "guro": "开膛、斩首、肢解、碎尸等",
    "gyaru": "辣妹",
    "gymshorts": "运动短裤",
    "haigure": "勒裆紧身衣",
    "hairjob": "发交",
    "hairy": "多发",
    "hairy armpits": "多腋毛",
    "handicapped": "残废",
    "handjob": "打手枪",
    "hardcore": "明确性交",
    "harem": "群体性交",
    "harness": "挽具",
    "harpy": "鸟人",
    "heterochromia": "异色瞳",
    "hijab": "头巾",
    "horse": "马",
    "horse boy": "马男孩",
    "horse cock": "马鸡巴",
    "horse girl": "马娘",
    "hotpants": "热裤",
    "how to": "教程",
    "huge breasts": "超巨乳",
    "huge penis": "巨大阴茎",
    "human cattle": "人类牧场",
    "human on furry": "人x怪物",
    "human pet": "宠物人",
    "humiliation": "羞辱",
    "impregnation": "受孕",
    "incest": "乱伦",
    "incomplete": "未完成",
    "infantilism": "假婴儿",
    "inflation": "膨胀",
    "insect": "昆虫",
    "insect boy": "具有昆虫的特征的男孩",
    "insect girl": "虫娘",
    "inseki": "乱伦",
    "inverted nipples": "缩回乳房内的乳头",
    "invisible": "透明人",
    "josou seme": "女装攻",
    "kangaroo": "袋鼠",
    "kappa": "河童",
    "kemonomimi": "兽耳",
    "kigurumi": "带头套的全身扮装",
    "kimono": "和服",
    "kindergarten uniform": "幼儿园制服",
    "kissing": "接吻",
    "kneepit sex": "腘交",
    "kunoichi": "くノ一",
    "lab coat": "实验工作服",
    "lactation": "泌乳",
    "large insertions": "巨物插入",
    "latex": "乳胶衣",
    "layer cake": "夹心饼",
    "leg lock": "锁腿",
    "legjob": "腿交",
    "leotard": "紧身衣",
    "lingerie": "女用贴身内衣",
    "lion": "狮子",
    "lioness": "母狮子",
    "living clothes": "活的衣服",
    "lizard girl": "蜥蜴娘",
    "lizard guy": "蜥蜴男孩",
    "lolicon": "萝莉",
    "long tongue": "长舌头",
    "machine": "机械奸",
    "maggot": "蛆虫",
    "magical girl": "魔法少女",
    "maid": "女仆",
    "male on dickgirl": "男x扶她",
    "males only": "只有男性",
    "masked face": "面具",
    "masturbation": "自慰",
    "mecha boy": "机甲男",
    "mecha girl": "机甲女",
    "menstruation": "月经",
    "mermaid": "美人鱼",
    "merman": "人鱼",
    "metal armor": "铠甲",
    "midget": "侏儒",
    "miko": "巫女",
    "milf": "熟女",
    "military": "军官制服",
    "milking": "榨乳",
    "mind break": "失神",
    "mind control": "精神控制",
    "minigirl": "微小的女孩",
    "miniguy": "微小的男孩",
    "minotaur": "米诺陶",
    "mmf threesome": "男男女3P",
    "mmt threesome": "二男一TS3P",
    "monkey": "猴子",
    "monoeye": "单眼怪",
    "monster": "怪物",
    "monster girl": "怪物娘",
    "moral degeneration": "堕落",
    "mosaic censorship": "有马赛克",
    "mother": "乱伦",
    "mouse": "老鼠",
    "mouse boy": "老鼠男孩",
    "mouse girl": "鼠耳娘",
    "mtf threesome": "一男一女一扶她3P",
    "multi-work series": "系列",
    "multiple arms": "多肢",
    "multiple breasts": "多乳",
    "multiple nipples": "多乳头",
    "multiple paizuri": "多乳交",
    "multiple penises": "多阴茎",
    "multiple vaginas": "多阴道",
    "muscle": "肌肉",
    "muscle growth": "肌肉生长",
    "mute": "哑巴",
    "nakadashi": "内射",
    "navel fuck": "肚脐交",
    "nazi": "纳粹",
    "necrophilia": "奸尸",
    "netorare": "NTR",
    "niece": "乱伦",
    "ninja": "忍者",
    "nipple birth": "从乳头生出",
    "nipple expansion": "乳头膨大",
    "nipple fuck": "插入乳头",
    "non-nude": "不露点",
    "nose fuck": "鼻交",
    "nose hook": "鼻钩",
    "novel": "小说",
    "nudity only": "只裸露",
    "nun": "修女",
    "nurse": "护士",
    "octopus": "章鱼",
    "oil": "润滑油",
    "old lady": "老年女性",
    "old man": "老年男性",
    "onahole": "女穴",
    "oni": "鬼",
    "oppai loli": "欧派萝莉",
    "orc": "一种兽人",
    "orgasm denial": "绝顶禁止",
    "ostrich": "鸵鸟",
    "oyakodon": "母女丼",
    "paizuri": "乳交",
    "panda girl": "熊猫娘",
    "panther": "美洲豹",
    "pantyhose": "裤袜",
    "pantyjob": "袜交",
    "paperchild": "纸片人",
    "parasite": "寄生虫",
    "pasties": "乳贴",
    "pegging": "逆推",
    "penis birth": "从阴茎生出",
    "petrification": "石化",
    "phimosis": "包茎",
    "phone sex": "电话性行为",
    "piercing": "穿孔",
    "pig": "猪",
    "pig girl": "猪娘",
    "pig man": "猪男性",
    "pillory": "刑具",
    "pirate": "海盗",
    "piss drinking": "饮尿",
    "plant boy": "植物男孩",
    "plant girl": "植物娘",
    "pole dancing": "钢管舞",
    "policeman": "警察",
    "policewoman": "女警察",
    "ponygirl": "扮马娘",
    "ponytail": "单马尾",
    "possession": "附身",
    "pregnant": "孕妇",
    "prehensile hair": "可控头发",
    "prolapse": "脱垂",
    "prostate massage": "前列腺按摩",
    "prostitution": "援交",
    "pubic stubble": "阴毛茬",
    "public use": "肉便器",
    "rabbit": "兔子",
    "raccoon boy": "浣熊男孩",
    "raccoon girl": "浣熊女孩",
    "race queen": "紧身衣",
    "randoseru": "小学生书包",
    "rape": "强奸",
    "real doll": "充气娃娃",
    "redraw": "重绘",
    "reptile": "爬行动物",
    "rewrite": "重写",
    "rhinoceros": "犀牛",
    "rimjob": "吻肛",
    "robot": "机器人",
    "ryona": "殴打",
    "saliva": "唾液",
    "sample": "样本",
    "scanmark": "水印",
    "scar": "瘢痕",
    "scat": "排便",
    "school swimsuit": "死库水",
    "schoolboy uniform": "男学生制服",
    "schoolgirl uniform": "女学生制服",
    "screenshots": "屏幕截图",
    "scrotal lingerie": "阴囊袋",
    "selfcest": "乱伦",
    "sex toys": "性玩具",
    "shared senses": "感官共享",
    "shark": "鲨鱼",
    "shark boy": "具有鲨鱼的特征的男孩",
    "shark girl": "鲨鱼娘",
    "shaved head": "只有头发茬的发型",
    "sheep": "绵羊",
    "sheep boy": "绵羊男孩",
    "sheep girl": "绵羊女孩",
    "shemale": "人妖",
    "shibari": "束缚",
    "shimapan": "条纹内裤",
    "shotacon": "正太",
    "shrinking": "缩小",
    "sister": "乱伦",
    "skinsuit": "假皮",
    "slave": "奴隶",
    "sleeping": "睡眠奸",
    "slime": "粘液",
    "slime boy": "史莱姆男孩",
    "slime girl": "史莱姆娘",
    "slug": "蛞蝓",
    "small breasts": "贫乳",
    "smegma": "阴垢",
    "smell": "气味",
    "smoking": "专指性行为时吸烟",
    "snake": "蛇",
    "snake boy": "蛇男孩",
    "snake girl": "蛇女孩",
    "snuff": "杀害",
    "sockjob": "袜交",
    "sole dickgirl": "唯一大屌萌妹",
    "sole female": "唯一女性",
    "sole male": "唯一男性",
    "solo action": "独自自慰",
    "spanking": "拍打",
    "speculum": "窥器",
    "speechless": "无文字内容",
    "spider": "蜘蛛",
    "spider girl": "蜘蛛娘",
    "squid boy": "乌贼男孩",
    "squid girl": "乌贼娘",
    "squirrel girl": "松鼠娘",
    "squirting": "潮吹",
    "ssbbm": "超级肥男",
    "ssbbw": "超级肥女",
    "stereoscopic": "双目立体视觉图像",
    "steward": "男乘务员",
    "stewardess": "女乘务员",
    "stockings": "长筒袜",
    "stomach deformation": "腹部变形",
    "story arc": "分章节剧情",
    "strap-on": "佩戴假阳具",
    "stretching": "拉长",
    "stuck in wall": "卡在墙中",
    "sumata": "素股",
    "sundress": "吊带裙",
    "sunglasses": "墨镜",
    "sweating": "流汗",
    "swimsuit": "泳装",
    "swinging": "同意第三者性交",
    "syringe": "注射",
    "table masturbation": "用桌子自慰",
    "tail plug": "肛塞",
    "tailjob": "尾交",
    "tall girl": "高个子女孩",
    "tall man": "高个子男人",
    "tankoubon": "单行本",
    "tanlines": "晒痕",
    "teacher": "老师",
    "tentacles": "触手",
    "text cleaned": "去文字版",
    "themeless": "无主题",
    "thigh high boots": "高筒靴",
    "tiara": "女式冕状头饰",
    "tickling": "挠痒痒",
    "tiger": "老虎",
    "tights": "紧身衣",
    "time stop": "时间停止",
    "toddlercon": "婴儿",
    "tomboy": "假小子",
    "tomgirl": "娘炮",
    "tooth brushing": "刷牙Play",
    "torture": "折磨",
    "tracksuit": "运动服",
    "trampling": "踩踏",
    "transformation": "渐变序列",
    "translated": "翻译",
    "tribadism": "磨豆腐",
    "triple anal": "一洞三插",
    "triple penetration": "三洞齐开",
    "triple vaginal": "一洞三插",
    "ttf threesome": "二扶她一女3P",
    "ttm threesome": "二扶她一男3P",
    "tube": "胃管",
    "turtle": "乌龟",
    "tutor": "校外辅导老师",
    "twins": "双胞胎",
    "twintails": "双马尾",
    "unbirth": "反出生",
    "uncensored": "无马赛克",
    "uncle": "同性乱伦",
    "underwater": "水下",
    "unicorn": "独角兽",
    "unusual pupils": "别致瞳孔",
    "unusual teeth": "不寻常的牙齿",
    "urethra insertion": "插入尿道",
    "urination": "排尿",
    "vacbed": "真空床",
    "vaginal sticker": "外阴贴",
    "vampire": "吸血鬼",
    "virginity": "处男",
    "vomit": "呕吐",
    "vore": "秀色",
    "voyeurism": "偷窥",
    "waiter": "服务员",
    "waitress": "女服务员",
    "webtoon": "网络漫画",
    "weight gain": "增重",
    "wet clothes": "湿身",
    "whale": "鲸鱼",
    "whip": "鞭子",
    "widow": "寡妇",
    "widower": "鳏夫",
    "wings": "翼",
    "witch": "魔女",
    "wolf": "狼",
    "wolf boy": "狼男孩",
    "wolf girl": "狼女孩",
    "wooden horse": "三角木马",
    "worm": "蠕虫",
    "wormhole": "虫洞",
    "wrestling": "摔角",
    "x-ray": "透视",
    "yandere": "病娇",
    "yaoi": "男同",
    "yukkuri": "油库里",
    "yuri": "百合",
    "zebra": "斑马",
    "zombie": "僵尸",
    "gloves": "手套",
    "leash": "狗链",
    "variant set": "变体集",
    "high heels": "高跟鞋",
    "multiple handjob": "多次打手枪",
    "exposed clothing": "暴露的衣服",
    "very long hair": "极长发",
    "no penetration": "无插入",
    "fishnets": "渔网",
    "tail": "尾巴",
    "horns": "角",
    "group": "乱交",
    "anal intercourse": "肛交",
    "hidden sex": "隐藏性交",
    "cumflation": "精液膨胀",
    "facial hair": "胡子",
    "makeup": "化妆",
    "compilation": "汇编",
    "forbidden content": "禁止内容",
    "watermarked": "水印",
    "western cg": "西方CG",
    "personality excretion": "排泄",
    "genital piercing": "生殖器穿孔",
    "nipple piercing": "乳头穿孔",
    "multiple orgasms": "连续高潮",
    "cock ring": "锁精环",
    "large tattoo": "全身纹身",
    "mmm threesome": "男3P",
    "eye-covering bang": "刘海遮住眼睛",
    "gender change": "性别改变",
    "ai generated": "AI生成",
    "loli": "萝莉",
    "sensei": "老师",
    "replaced": "替换的",
    "hair buns": "发髻",
    "extraneous ads": "多余的广告",
    "gyaru-oh": "男装",
    "vtuber": "虚拟主播",
    "pixie cut": "精灵剪发",
    "thick eyebrows": "浓眉",
    "small penis": "小鸡鸡",
    "soushuuhen": "综合本",
    "shimaidon": "姐妹本",
    "clothed female nude male": "穿衣女裸男",
    "nipple stimulation": "刺激乳头",
    "mesuiki": "雌性化",
    "mouth mask": "口罩",
    "petplay": "宠物扮演",
    "drill hair": "螺旋头发",
    "non-h": "非H",
    "domination loss": "统治权丧失",
    "poor grammar": "语法错误",
    "artistcg": "插画CG",

    // 语言
    "chinese": "中文",
    "spanish": "西班牙语",
    "english": "英语",
    "japanese": "日语",
    "korean": "韩语",
    "ukrainian": "乌克兰语",

    // 作品
    "original": "原创",
    "blue archive": "蔚蓝档案",
    "azur lane": "碧蓝航线",
    "genshin impact": "原神",
    "the idolmaster": "偶像大师",
    "arknights": "明日方舟",
    "lycoris recoil": "莉可丽丝",
    "pokemon": "精灵宝可梦",
    "honkai gakuen": "崩坏学园",
    "chainsaw man": "电锯人",
    "spy x family": "间谍过家家",
    "kantai collection": "舰队Collection",
    "honkai star rail": "崩坏: 星穹铁道",
    "bocchi the rock": "孤独摇滚",
    "jojos bizarre adventure": "JOJO的奇幻冒险",
    "naruto": "火影忍者",
    "one piece": "海贼王",
    "the legend of zelda": "塞尔达传说",
    "kobayashi-san-chi no maid dragon": "小林家的龙女仆",
    "spider-man": "蜘蛛侠",
    "fate grand order": "Fate/Grand Order",
    "girls und panzer": "少女与战车",
    "nier": "尼尔",
    "nier automata": "尼尔：机械纪元",
    "kimetsu no yaiba": "鬼灭之刃",
    "resident evil": "生化危机",
    "touhou project": "东方Project",
    "league of legends": "英雄联盟",
    "kono subarashii sekai ni syukufuku o": "为美好的世界献上祝福!",
    "love live nijigasaki high school idol club": "Love Live! 虹咲学园学园偶像同好会",
    "granblue fantasy": "碧蓝幻想",
    "neon genesis evangelion": "新世纪福音战士",
    "love live": "Love Live！",
    "sailor moon": "美少女战士",
    "mahou shoujo lyrical nanoha": "魔法少女奈叶",
    "fate stay night": "命运之夜",
    "to love-ru": "出包王女",
    "sword art online": "刀剑神域",
    "street fighter": "街头霸王",
    "puella magi madoka magica": "魔法少女小圆",
    "princess connect": "公主连结",
    "my hero academia": "我的英雄学院",
    "king of fighters": "格斗之王",
    "k-on": "轻音少女",
    "touken ranbu": "刀剑乱舞",
    "code geass": "反叛的鲁路修",
    "love live sunshine": "Love Live！Sunshine!!",
    "cardcaptor sakura": "魔卡少女樱",
    "the melancholy of haruhi suzumiya": "凉宫春日的忧郁",
    "final fantasy vii": "最终幻想VII",
    "shingeki no kyojin": "进击的巨人",
    "vocaloid": "VOCALOID",
    "free": "Free！",
    "toheart2": "ToHeart2",
    "dead or alive": "死或生",
    "gochuumon wa usagi desu ka": "请问您今天要来点兔子吗？",
    "dragon ball z": "龙珠Z",
    "bleach": "死神",
    "bakemonogatari": "化物语",
    "ore no imouto ga konna ni kawaii wake ga nai": "我的妹妹不可能那么可爱",
    "monster hunter": "怪物猎人",
    "hololive": "Hololive",
    "girls frontline": "少女前线",
    "fate kaleid liner prisma illya": "Fate/kaleid liner 魔法少女☆伊莉雅",
    "toaru kagaku no railgun": "科学超电磁炮",
    "boku wa tomodachi ga sukunai": "我的朋友很少",
    "ragnarok online": "仙境传说Online",
    "dragon quest iii": "勇者斗恶龙III",
    "ojamajo doremi": "小魔女DoReMi",
    "darkstalkers": "黑暗武士",
    "ah my goddess": "我的女神",
    "samurai spirits": "侍魂",
    "queens blade": "女王之刃",
    "haikyuu": "排球少年",
    "yu-gi-oh": "游戏王",
    "danganronpa": "弹丸论破",
    "yu-gi-oh zexal": "游戏王ZEXAL",
    "persona 4": "女神异闻录4",
    "kuroko no basuke": "黒子のバスケ",
    "smile precure": "Smile 光之美少女",
    "sakura taisen": "樱花大战",
    "mahou sensei negima": "魔法老师",
    "ranma 12": "乱马1/2",
    "infinite stratos": "IS〈Infinite Stratos〉",
    "toaru majutsu no index": "魔法禁书目录",
    "saki": "咲-Saki-",
    "to heart": "ToHeart",
    "detective conan": "名侦探柯南",
    "guilty gear": "罪恶装备",
    "gundam seed destiny": "机动战士高达SEED DESTINY",
    "tenchi muyo": "天地无用！",
    "pretty cure": "光之美少女",
    "strike witches": "魔法少女猎人",
    "lucky star": "幸运星",
    "love hina": "爱·赞",
    "kanon": "Kanon",
    "amagami": "甘城光辉游乐园",
    "nijisanji": "虹色社",
    "kemono friends": "兽娘动物园",
    "persona 5": "女神异闻录5",
    "super robot wars": "超级机器人大战",
    "hayate no gotoku": "旋风管家",
    "osomatsu-san": "马男波松",
    "pripara": "普莉帕拉",
    "ensemble stars": "偶像天团",
    "re zero kara hajimeru isekai seikatsu": "Re:从零开始的异世界生活",
    "bang dream": "BanG Dream!",

    // 人物
    "teitoku": "提督",
    "gudao": "古道",
    "producer": "制作人",
    "reimu hakurei": "博丽灵梦",
    "asuka langley soryu": "惣流·明日香",
    "sakuya izayoi": "十六夜咲夜",
    "patchouli knowledge": "帕秋莉·诺蕾姬",
    "shielder": "盾之女神",
    "shinji ikari": "碇真嗣",
    "gran": "格兰",
    "sanae kochiya": "东风谷早苗",
    "rei ayanami": "绫波零",
    "fate testarossa": "菲特·特斯塔罗莎",
    "flandre scarlet": "芙兰朵露·斯卡雷特",
    "remilia scarlet": "蕾米莉亚·斯卡雷特",
    "atago": "愛宕",
    "marisa kirisame": "雾雨魔理沙",
    "kashima": "鹿岛",
    "sakura kinomoto": "木之本樱",
    "satori komeiji": "古明地觉",
    "kaga": "加贺",
    "alice margatroid": "爱丽丝·玛格特洛依德",
    "aya shameimaru": "射命丸文",
    "yukari yakumo": "八云紫",
    "shimakaze": "岛风",
    "nanoha takamachi": "高町なのは",
    "shirou emiya": "卫宫士郎",
    "rin tosaka": "遠坂凛",
    "rito yuuki": "結城リト",
    "reisen udongein inaba": "铃仙·优昙华院·因幡",
    "takao": "高雄",
    "jeanne darc": "贞德",
    "jeanne alter": "贞德·奥尔塔",
    "naruto uzumaki": "漩涡鸣人",
    "nami": "娜美",
    "chun-li": "春丽",
    "illyasviel von einzbern": "伊莉雅丝菲尔·冯·爱因兹贝伦",
    "tifa lockhart": "蒂法·洛克哈特",
    "youmu konpaku": "魂魄妖梦",
    "kazuto kirigaya": "桐ヶ谷和人",
    "shikikan": "司令官",
    "saber": "阿尔托莉雅·潘德拉贡",
    "minamoto no raikou": "源赖光",
    "asuna yuuki": "结城明日奈",
    "gudako": "古代",
    "mai shiranui": "不知火舞",
    "koishi komeiji": "古明地恋",
    "kasumi": "霞",
    "maki nishikino": "西木野真姬",
    "izuku midoriya": "绿谷出久",
    "scathach": "斯卡哈",
    "momiji inubashiri": "犬走椛",
    "astolfo": "阿斯托尔福",
    "mikoto misaka": "御坂美琴",
    "hamakaze": "滨风",
    "artoria pendragon": "亚瑟王",
    "katsuki bakugou": "爆豪勝己",
    "homura akemi": "暁美ほむら",
    "djeeta": "ジータ",
    "suzuya": "铃谷",
    "rin shibuya": "渋谷凛",
    "nico yazawa": "矢泽妮可",
    "levi ackerman": "利威尔·阿克曼",
    "eren jaeger": "艾伦·耶格尔",
    "sakura haruno": "春野樱",
    "sailor mercury": "水手水银",
    "chino kafuu": "奇诺·香风",
    "mikan yuuki": "橙",
    "koyomi araragi": "阿良々木暦",
    "kyousuke kousaka": "高坂京介",
    "haruka nanase": "七瀬遙",
    "haruna": "晴菜",
    "haruhi suzumiya": "涼宮ハルヒ",
    "mio akiyama": "秋山澪",
    "hinata hyuga": "日向ヒナタ",
    "ran yakumo": "八云蓝",
    "kongou": "金刚",
    "kotori minami": "南小鸟",
    "rider": "骑士",
    "madoka kaname": "鹿目圆",
    "hong meiling": "红美铃",
    "makoto tachibana": "橘真琴",
    "koakuma": "小恶魔",
    "tomoyo daidouji": "大道寺知世",
    "shigure": "时雨",
    "touma kamijou": "上条当麻",
    "bb": "BB",
    "mami tomoe": "巴麻美",
    "kazuma satou": "佐藤和真",
    "umi sonoda": "園田海未",
    "yuyuko saigyouji": "西行寺幽幽子",
    "yuuka kazami": "风见幽香",
    "nagato": "长门有希",
    "arisu tachibana": "立花亚里栖",
    "belldandy": "贝尔达琳德",
    "maya": "真夜",
    "sena kashiwazaki": "柏崎星奈",
    "golden darkness": "金暗",
    "sailor jupiter": "木野真琴",
    "mika jougasaki": "城崎美嘉",
    "shuten douji": "酒吞童子",
    "sailor mars": "火野レイ",
    "minami nitta": "新田美波",
    "lelouch vi britannia": "鲁鲁修·vi·不列颠尼亚",
    "rika jougasaki": "城崎莉嘉",
    "prinz eugen": "欧根亲王",
    "azusa nakano": "中野梓",
    "tenryuu": "天龙",
    "ami mizuno": "水野亚美",
    "byakuren hijiri": "圣白莲",
    "suwako moriya": "守矢蕾子",
    "miki hoshii": "星井美希",
    "ayane": "绫音",
    "sakura matou": "間桐 桜",
    "tsunade": "綱手",
    "tenshi hinanai": "比那名居天子",
    "miku hatsune": "初音未来",
    "kallen stadtfeld": "卡列娜·斯塔德菲尔德"
  };
}

