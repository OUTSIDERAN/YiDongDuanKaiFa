import { Person } from './Person';
import contact from '@ohos.contact';
const ContactInfo: any[] = [
  {
    "WeChatImage": "person (1).jpg",
    "WeChatName": "通讯人1",
    "ChatInfo": "亲爱的爱上你从那天起，甜蜜的很轻易",
    "time": "10:30"
  },
  {
    "WeChatImage": "person (2).jpg",
    "WeChatName": "通讯人2",
    "ChatInfo": "我一路向北，离开有你的季节",
    "time": "10:29"
  },
  {
    "WeChatImage": "person (3).jpg",
    "WeChatName": "通讯人3",
    "ChatInfo": "听妈妈的话别让她受伤，想快快长大才能保护她",
    "time": "10:28"
  },
  {
    "WeChatImage": "person (4).jpg",
    "WeChatName": "通讯人4",
    "ChatInfo": "雨下整夜我的爱溢出就像雨水",
    "time": "10:27"
  },
  {
    "WeChatImage": "person (5).jpg",
    "WeChatName": "通讯人5",
    "ChatInfo": "为你弹奏萧邦的夜曲，纪念我死去的爱情",
    "time": "10:26"
  },
  {
    "WeChatImage": "person (6).jpg",
    "WeChatName": "通讯人6",
    "ChatInfo": "最美的不是下雨天，是曾与你躲过雨的屋檐",
    "time": "10:25"
  },
  {
    "WeChatImage": "person (7).jpg",
    "WeChatName": "通讯人7",
    "ChatInfo": "我送你离开千里之外你无声黑白",
    "time": "10:24"
  },
  {
    "WeChatImage": "person (8).jpg",
    "WeChatName": "通讯人8",
    "ChatInfo": "天灰灰会不会，让我忘了你是谁",
    "time": "10:23"
  },
  {
    "WeChatImage": "person (9).jpg",
    "WeChatName": "通讯人9",
    "ChatInfo": "我顶着大太阳，只想为你撑伞",
    "time": "10:22"
  },
  {
    "WeChatImage": "person (10).jpg",
    "WeChatName": "通讯人10",
    "ChatInfo": "我想就这样牵着你的手不放开",
    "time": "10:21"
  },
  {
    "WeChatImage": "person (11).jpg",
    "WeChatName": "通讯人11",
    "ChatInfo": "想回到过去，试着让故事继续",
    "time": "10:20"
  },
  {
    "WeChatImage": "person (12).jpg",
    "WeChatName": "通讯人12",
    "ChatInfo": "哪里有彩虹告诉我",
    "time": "10:19"
  },
  {
    "WeChatImage": "person (13).jpg",
    "WeChatName": "通讯人13",
    "ChatInfo": "能不能给我一首歌的时间，紧紧的把那拥抱变成永远",
    "time": "10:18"
  },
  {
    "WeChatImage": "person (14).jpg",
    "WeChatName": "通讯人14",
    "ChatInfo": "缓缓飘落的枫叶像思念，我点燃烛光温暖岁末的秋天",
    "time": "10:17"
  },
  {
    "WeChatImage": "person (15).jpg",
    "WeChatName": "通讯人15",
    "ChatInfo": "转身离开，分手说不出来",
    "time": "10:16"
  },
  {
    "WeChatImage": "person (16).jpg",
    "WeChatName": "通讯人16",
    "ChatInfo": "徒留我孤单在湖面成双",
    "time": "10:15"
  },
  {
    "WeChatImage": "person (17).jpg",
    "WeChatName": "通讯人17",
    "ChatInfo": "想回到过去，试着让故事继续",
    "time": "10:14"
  },
  {
    "WeChatImage": "person (18).jpg",
    "WeChatName": "通讯人18",
    "ChatInfo": "断了的弦再怎么连，我的感觉你已听不见",
    "time": "10:13"
  },
  {
    "WeChatImage": "person (19).jpg",
    "WeChatName": "通讯人19",
    "ChatInfo": "风筝在阴天搁浅，想念还在等待救援",
    "time": "10:12"
  },
  {
    "WeChatImage": "person (20).jpg",
    "WeChatName": "通讯人20",
    "ChatInfo": "乘着风游荡在蓝天边，一片云掉落在我面前",
    "time": "10:11"
  },
  {
    "WeChatImage": "person (21).jpg",
    "WeChatName": "通讯人21",
    "ChatInfo": "希望他是真的比我还要爱你，我才会逼自己离开",
    "time": "10:10"
  },
  {
    "WeChatImage": "person (22).jpg",
    "WeChatName": "通讯人22",
    "ChatInfo": "翻着我们的照片，想念若隐若现",
    "time": "10:09"
  },
  {
    "WeChatImage": "person (23).jpg",
    "WeChatName": "通讯人23",
    "ChatInfo": "繁华如三千东流水，我只取一瓢爱了解",
    "time": "10:08"
  },
  {
    "WeChatImage": "person (24).jpg",
    "WeChatName": "通讯人24",
    "ChatInfo": "我陪你走到最后，能不能别想太多",
    "time": "10:07"
  },
  {
    "WeChatImage": "person (25).jpg",
    "WeChatName": "通讯人25",
    "ChatInfo": "琴声何在，生死难猜，用一声去等待",
    "time": "10:06"
  },
  {
    "WeChatImage": "person (26).jpg",
    "WeChatName": "通讯人26",
    "ChatInfo": "岁月在墙上剥落看见小时候",
    "time": "10:05"
  },
  {
    "WeChatImage": "person (27).jpg",
    "WeChatName": "通讯人27",
    "ChatInfo": "我戒不掉她的微笑，洋溢幸福的味道",
    "time": "10:04"
  },
  {
    "WeChatImage": "person (28).jpg",
    "WeChatName": "通讯人28",
    "ChatInfo": "下降的速度太快，来不及踏上未来",
    "time": "10:03"
  },
  {
    "WeChatImage": "person (29).jpg",
    "WeChatName": "通讯人29",
    "ChatInfo": "想哭来试探自己麻痹了没，全世界好像只有我疲惫",
    "time": "10:02"
  },
  {
    "WeChatImage": "person (30).jpg",
    "WeChatName": "通讯人30",
    "ChatInfo": "我们的感情蔓延珍藏拥吻着飞扬",
    "time": "10:01"
  }
]
const Addinfo : any = [
  {
    "WeChatImage": "person (31).jpg",
    "WeChatName": "_7",
    "ChatInfo": "我们的感情蔓延珍藏拥吻着飞扬",
    "time": "10:01"
  }
]

export function getContactInfo(): Array<Person>{
  let contactList : Array<Person> = [];
  let tt : Person;
  ContactInfo.forEach( item => {
    contactList.push(new Person(item.WeChatImage, item.WeChatName, item.ChatInfo, item.time))
  });
  return contactList;
}

export function GetAddInfo(): Person
{
  let Temp
  return Temp = new Person("person (31).jpg", "_7", "力摧敌阵，如视天光破云", "10:01");

}

export const WeChatColor:string = "#cccccc"