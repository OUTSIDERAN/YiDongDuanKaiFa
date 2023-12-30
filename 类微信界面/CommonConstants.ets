/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import router from '@ohos.router';

/**
 * Common constants for all features.
 */
export default class CommonConstants {
  /**
   * Input length of the account.
   */
  static readonly INPUT_ACCOUNT_LENGTH = 11;

  /**
   *  Input length of the password.
   */
  static readonly INPUT_PASSWORD_LENGTH = 8;

  /**
   *  Left padding of the input box
   */
  static readonly INPUT_PADDING_LEFT = 0;

  /**
   * Delay time of simulated login
   */
  static readonly LOGIN_DELAY_TIME = 2000;

  /**
   * Common Spacing of Components
   */
  static readonly COMMON_SPACE = 12;

  /**
   * Title text of the home page
   */
  static readonly HOME_TITLE = '首页';

  /**
   * Title text of the setting page
   */
  static readonly MINE_TITLE = '我的';

  /**
   * Spacing of other login methods
   */
  static readonly LOGIN_METHODS_SPACE = 44;

  /**
   * The width or height of the component is spread across the parent component.
   */
  static readonly FULL_PARENT = '100%';

  /**
   * The width of button
   */
  static readonly BUTTON_WIDTH = '90%';

  /**
   * The width of setting list
   */
  static readonly SET_LIST_WIDTH = '42%';

  /**
   * Home tab index
   */
  static readonly HOME_TAB_INDEX = 0;

  /**
   * Mine tab index
   */
  static readonly MINE_TAB_INDEX = 1;

  /**
   * banner list
   */
  static readonly BANNER_IMG_LIST: Array<Resource> = [
  $r('app.media.ic_scene_1'),
  $r('app.media.ic_food_0'),
  $r('app.media.ic_life_0'),
  $r('app.media.ic_men_0')
  ];

  /**
   * scene list
   */
  static readonly SCENE_LIST: Array<Resource> = [
  $r('app.media.ic_scene_1'),
  $r('app.media.ic_scene_2'),
  $r('app.media.ic_scene_0')
  ];

  /**
   * men list
   */
  static readonly MEN_LIST: Array<Resource> = [
  $r('app.media.ic_men_0'),
  $r('app.media.ic_men_2'),
  $r('app.media.ic_men_3')
  ];

  /**
   * food list
   */
  static readonly FOOD_LIST: Array<Resource> = [
  $r('app.media.ic_food_1'),
  $r('app.media.ic_food_0'),
  ];

  /**
   * life list
   */
  static readonly LIFE_LIST: Array<Resource> = [
  $r('app.media.ic_life_1'),
  $r('app.media.ic_life_0'),
  $r('app.media.ic_life_2'),
  $r('app.media.ic_life_3'),
  $r('app.media.ic_life_4'),
  $r('app.media.ic_life_5')
  ];

  /**
   * index page img arr
   */
  static readonly IMG_ARR: Resource[][] = [
  new Array<Resource>().concat(CommonConstants.SCENE_LIST, CommonConstants.LIFE_LIST, CommonConstants.MEN_LIST),
  new Array<Resource>().concat(CommonConstants.MEN_LIST, CommonConstants.LIFE_LIST, CommonConstants.SCENE_LIST),
  new Array<Resource>().concat(CommonConstants.FOOD_LIST, CommonConstants.SCENE_LIST, CommonConstants.SCENE_LIST),
  new Array<Resource>().concat(CommonConstants.LIFE_LIST, CommonConstants.FOOD_LIST, CommonConstants.MEN_LIST)
  ];

  /**
   * title font weight
   */
  static readonly TITLE_FONT_WEIGHT: number = 500;

  /**
   * aspect ratio
   */
  static readonly BANNER_ASPECT_RATIO: number = 1.5;

  /**
   * animate duration
   */
  static readonly BANNER_ANIMATE_DURATION: number = 300;

  /**
   * share delay
   */
  static readonly SHARE_TRANSITION_DELAY: number = 100;

  /**
   * aspect ratio
   */
  static readonly STACK_IMG_RATIO: number = 0.7;

  /**
   * item space
   */
  static readonly LIST_ITEM_SPACE: number = 2;

  /**
   * cache size
   */
  static readonly CACHE_IMG_SIZE: number = 4;

  /**
   * cache list
   */
  static readonly CACHE_IMG_LIST: string[] = ['', '', '', ''];

  /**
   * title
   */
  static readonly PAGE_TITLE: string = '电子相册';

  /**
   *  router param
   */
  static readonly PARAM_PHOTO_ARR_KEY: string = 'photoArr';

  /**
   *  selected index
   */
  static readonly SELECTED_INDEX_KEY: string = 'selectedIndex';

  /**
   * grid column template
   */
  static readonly GRID_COLUMNS_TEMPLATE: string = '1fr 1fr 1fr 1fr';

  /**
   * index page columns template
   */
  static readonly INDEX_COLUMNS_TEMPLATE: string = '1fr 1fr';

  /**
   *  percent
   */
  static readonly FULL_PERCENT: string = '100%';

  /**
   * photo item percent
   */
  static readonly PHOTO_ITEM_PERCENT: string = '90%';

  /**
   * show count
   */
  static readonly SHOW_COUNT: number = 8;

  /**
   * default width
   */
  static readonly DEFAULT_WIDTH: number = 360;

  /**
   * padding
   */
  static readonly PHOTO_ITEM_PADDING: number = 8;

  /**
   * offset
   */
  static readonly PHOTO_ITEM_OFFSET: number = 16;

  /**
   * item opacity offset
   */
  static readonly ITEM_OPACITY_OFFSET: number = 0.2;

  /**
   * double number
   */
  static readonly DOUBLE_NUMBER: number = 2;

  /**
   * list page url
   */
  static readonly URL_LIST_PAGE: string = 'pages/ListPage';

  /**
   * detail list page url
   */
  static readonly URL_DETAIL_LIST_PAGE: string = 'pages/DetailListPage';

  /**
   * detail page url
   */
  static readonly URL_DETAIL_PAGE: string = 'pages/DetailPage';

  /**
   * index page tag
   */
  static readonly TAG_INDEX_PAGE: string = 'IndexPage push error ';

  /**
   * list page tag
   */
  static readonly TAG_LIST_PAGE: string = 'ListPage push error ';

  /**
   * detail list page tag
   */
  static readonly TAG_DETAIL_PAGE: string = 'DetailListPage push error ';

}

let personId = 0;

export class Person {
  id: string;
  WeChatImage: string;
  WeChatName: string;
  ChatInfo: string;
  time: string;

  constructor(WeChatImage: string, WeChatName: string, ChatInfo: string, time: string) {
    this.id = `${personId++}`
    this.WeChatImage = WeChatImage;
    this.WeChatName = WeChatName;
    this.ChatInfo = ChatInfo;
    this.time = time;
  }
}
const ContactInfo: any[] = [
  {
    "WeChatImage": "person (1).jpg",
    "WeChatName": "通讯人1",
    "ChatInfo": "犯大吴疆土者，盛必击而破之",
    "time": "10:30"
  },
  {
    "WeChatImage": "person (2).jpg",
    "WeChatName": "通讯人2",
    "ChatInfo": "生食汉禄,死为汉臣",
    "time": "10:29"
  },
  {
    "WeChatImage": "person (3).jpg",
    "WeChatName": "通讯人3",
    "ChatInfo": "铁戟双提八十斤，威风凛凛镇乾坤。",
    "time": "10:28"
  },
  {
    "WeChatImage": "person (4).jpg",
    "WeChatName": "通讯人4",
    "ChatInfo": "一生纵横,怎可对他人称臣!",
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
    "ChatInfo": "生人既得兮归桑梓，死当埋骨兮长已矣！",
    "time": "10:25"
  },
  {
    "WeChatImage": "person (7).jpg",
    "WeChatName": "通讯人7",
    "ChatInfo": "策谋本天成，妙手偶得之。",
    "time": "10:24"
  },
  {
    "WeChatImage": "person (8).jpg",
    "WeChatName": "通讯人8",
    "ChatInfo": "破阵斩将，易如反掌！",
    "time": "10:23"
  },
  {
    "WeChatImage": "person (9).jpg",
    "WeChatName": "通讯人9",
    "ChatInfo": "君且安坐，听我一言。",
    "time": "10:22"
  },
  {
    "WeChatImage": "person (10).jpg",
    "WeChatName": "通讯人10",
    "ChatInfo": "谦谦君子，不饮盗泉之水；儒生脱尘，不为好逸恶劳。",
    "time": "10:21"
  },
  {
    "WeChatImage": "person (11).jpg",
    "WeChatName": "通讯人11",
    "ChatInfo": "江东子弟，何惧于天下！",
    "time": "10:20"
  },
  {
    "WeChatImage": "person (12).jpg",
    "WeChatName": "通讯人12",
    "ChatInfo": "墨能力透纸背，亦能润物如水。",
    "time": "10:19"
  },
  {
    "WeChatImage": "person (13).jpg",
    "WeChatName": "通讯人13",
    "ChatInfo": "宁可战死失社稷，绝不拱手让江山！",
    "time": "10:18"
  },
  {
    "WeChatImage": "person (14).jpg",
    "WeChatName": "通讯人14",
    "ChatInfo": "纵使前方困奋难行，毅当砥砺奋进！",
    "time": "10:17"
  },
  {
    "WeChatImage": "person (15).jpg",
    "WeChatName": "通讯人15",
    "ChatInfo": "合纵连横，方能以弱胜强。",
    "time": "10:16"
  },
  {
    "WeChatImage": "person (16).jpg",
    "WeChatName": "通讯人16",
    "ChatInfo": "挟天子以令诸侯，或敕令以致四方！",
    "time": "10:15"
  },
  {
    "WeChatImage": "person (17).jpg",
    "WeChatName": "通讯人17",
    "ChatInfo": "山不厌高，海不厌深",
    "time": "10:14"
  },
  {
    "WeChatImage": "person (18).jpg",
    "WeChatName": "通讯人18",
    "ChatInfo": "建平所言八十，谓昼夜也，吾其决矣。",
    "time": "10:13"
  },
  {
    "WeChatImage": "person (19).jpg",
    "WeChatName": "通讯人19",
    "ChatInfo": "此心安处是吾乡。/感心动耳，荡气回肠，莫再回望",
    "time": "10:12"
  },
  {
    "WeChatImage": "person (20).jpg",
    "WeChatName": "通讯人20",
    "ChatInfo": "比丧命更痛苦，比死亡更恐怖。",
    "time": "10:11"
  },
  {
    "WeChatImage": "person (21).jpg",
    "WeChatName": "通讯人21",
    "ChatInfo": "大展宏图，就在今日！",
    "time": "10:10"
  },
  {
    "WeChatImage": "person (22).jpg",
    "WeChatName": "通讯人22",
    "ChatInfo": "富我大魏，扬我国威！",
    "time": "10:09"
  },
  {
    "WeChatImage": "person (23).jpg",
    "WeChatName": "通讯人23",
    "ChatInfo": "你我推心置腹，岂能相负。",
    "time": "10:08"
  },
  {
    "WeChatImage": "person (24).jpg",
    "WeChatName": "通讯人24",
    "ChatInfo": "百年兴衰皆由人，不由天！",
    "time": "10:07"
  },
  {
    "WeChatImage": "person (25).jpg",
    "WeChatName": "通讯人25",
    "ChatInfo": "聚群臣而嘉勋，隆天子之气运！",
    "time": "10:06"
  },
  {
    "WeChatImage": "person (26).jpg",
    "WeChatName": "通讯人26",
    "ChatInfo": "势如破竹，铁索横江亦难挡。",
    "time": "10:05"
  },
  {
    "WeChatImage": "person (27).jpg",
    "WeChatName": "通讯人27",
    "ChatInfo": "金瓯尚缺，死难瞑目。",
    "time": "10:04"
  },
  {
    "WeChatImage": "person (28).jpg",
    "WeChatName": "通讯人28",
    "ChatInfo": "损益万枢，竭世运机。",
    "time": "10:03"
  },
  {
    "WeChatImage": "person (29).jpg",
    "WeChatName": "通讯人29",
    "ChatInfo": "洛水圆石，遂道南向，吾将以俭自完耳。",
    "time": "10:02"
  },
  {
    "WeChatImage": "person (30).jpg",
    "WeChatName": "通讯人30",
    "ChatInfo": "：倾荡之势已成，石城尽在眼下。",
    "time": "10:01"
  }
]
const Addinfo : any = [
  {
    "WeChatImage": "person (31).jpg",
    "WeChatName": "_7",
    "ChatInfo": "感悟伤我怀，俯心常叹息。",
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

@Component
export struct WeChatTitle {
  private text : string;
  build(){
    Flex({justifyContent:FlexAlign.Center,alignItems:ItemAlign.Center}){
      Text(this.text)
        .fontSize('18fp')
        .padding('20px')
        .fontColor(Color.Black)
    }
    .height('120px')
    .backgroundColor(Color.White)
  }
}

export function GetAddInfo(): Person
{
  let Temp
  return Temp = new Person("person (31).jpg", "_7", "力摧敌阵，如视天光破云", "10:01");

}

export const WeChatColor:string = "#cccccc"

@Component
export struct WeChatItemStyle {
  private imageSrc : string;
  private text : string;
  private arrow : string = 'arrow.png'
  build(){
    Column(){
      Flex({justifyContent:FlexAlign.Start,alignItems:ItemAlign.Center}){
        Image($rawfile(this.imageSrc))
          .width('75px')
          .height('75px')
          .margin({left:'50px'})
        Text(this.text)
          .fontSize('15vp')
          .margin({left:'40px'})
          .flexGrow(1)
        Image($rawfile(this.arrow))
          .width('75px')
          .height('75px')
          .margin({right:'40px'})
      }
      .height('150px')
      .width('100%')
    }
  }
}

@Component
export struct MyDivider{
  private style : string = ''
  build(){
    Row(){
      Divider()
        .vertical(false)
        .color(Color.Gray)
        .strokeWidth(this.style=='1'?'3px':'23px')
    }
    .height(this.style=='1'?'3px':'23px')
    .width('100%')
  }
}

@Component
export struct ChatItemStyle {
  WeChatImage : string;
  WeChatName : string;
  ChatInfo : string;
  time : string;
  // @Consume allNumber : number
  build(){
    Column(){
      Flex({justifyContent:FlexAlign.Start,alignItems:ItemAlign.Center}){
        Image($rawfile(this.WeChatImage))
          .width('120px')
          .height('120px')
          .margin({left:'50px',right:'50px'})
        Column(){
          Text(this.WeChatName).fontSize('16fp')
          Text(this.ChatInfo).fontSize('12fp').width('620px').fontColor('#c2bec2').maxLines(1)
        }.alignItems(HorizontalAlign.Start).flexGrow(1)
        Text(this.time).fontSize('12fp').margin({right:'50px'}).fontColor('#c2bec2')
      }
      .height('180px')
      .width('100%')
      Row(){
        Text().width('190px').height('3px')
        Divider()
          .vertical(false)
          .color(WeChatColor)
          .strokeWidth('3px')
      }
      .height('3px')
      .width('100%')
    }
    /*    .onClick(()=>{
          // this.allNumber--
          router.pushUrl({url:'pages/ChatDetailPage',params:{
            WeChatImage:this.WeChatImage,
            WeChatName : this.WeChatName,
            ChatInfo : this.ChatInfo
          }})
        })
        */
  }
}

//------------------------------------------------------------------------------------------
export const SECOND_PAGE: string = 'pages/SimpleVideoPlay';

/**
 * route param
 */
export const SOURCE: string = 'source';

/**
 * video net address
 */
export const NET: string = '网络视频地址*****';

/**
 * toast message
 */
export const MESSAGE: string = '请检查网络';

/**
 * init time of string
 */
export const START_TIME: string = '00:00';

/**
 * video net address
 */
export const ZERO_STR: string = '0';

/**
 * time split
 */
export const SPLIT: string = ':';

/**
 * default opacity
 */
export const DEFAULT_OPACITY: number = Number.parseFloat('0.2');

/**
 * slider small track thick ness
 */
export const SMALL_TRACK_THICK_NESS: number = 2;

/**
 * slider big track thick ness
 */
export const BIG_TRACK_THICK_NESS: number = 4;

/**
 * the divide of single and double
 */
export const COMMON_NUM_DOUBLE: number = 10;

/**
 * the minute of one hour
 */
export const COMMON_NUM_MINUTE: number = 60;

/**
 * common font weight
 */
export const COMMON_NUM_FONT_WEIGHT: number = 500;

/**
 * toast duration
 */
export const COMMON_NUM_DURATION: number = 5000;

/**
 * module list
 */
export const LIST: string[] = ['最近播放', '为你推荐'];

/**
 * full percent
 */
export const ALL_PERCENT: string = '100%';

/**
 * Image Size
 */
export const IMAGE_SIZE: number = 24;

/**
 * component with or height percent
 */
export const enum STRING_PERCENT {
  SLIDER_WITH = '46.7%',
  NINETY_PERCENT = '88%',
  INDEX_COMPONENT_WITH_PERCENT = '93.3%',
  INDEX_SWIPER_HEIGHT_PERCENT = '24.1%',
  INDEX_MODULE_HEIGHT_PERCENT = '22.8%',
  INDEX_SWIPER_LEFT_RIGHT_MARGIN = '3.3%'
}

/**
 * margin or font size
 */
export const enum MARGIN_FONT_SIZE {
  FIRST_MARGIN = 12,
  SECOND_MARGIN = 16,
  THIRD_MARGIN = 18,
  FOURTH_MARGIN = 24,
  FIFTH_MARGIN = 50,
  SIXTH_MARGIN = 94,
  SEVENTH_MARGIN = 132
}

/**
 * video resource type
 */
export const enum VIDEO_TYPE {
  INNER = 'inner',
  NET = 'net'
}

/**
 * Attribute Styles in a Stack Layout
 */
export const enum STACK_STYLE {
  IMAGE_Z_INDEX = 2,
  PROGRESS_VALUE = 0,
  PROGRESS_TOTAL = 100,
  PROGRESS_STROKE_WIDTH = 15,
  PROGRESS_SCALE_COUNT = 15,
  PROGRESS_SCALE_WIDTH = 5,
  PROGRESS_Z_INDEX = 1,
  PROGRESS_WIDTH = 80,
  PROGRESS_STEP = 10,
  MILLI_SECONDS = 100
}
