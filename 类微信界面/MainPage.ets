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

import CommonConstants from '../common/constants/CommonConstants';
import {WeChatItemStyle, MyDivider, ChatItemStyle,WeChatTitle, Person, getContactInfo} from '../common/constants/CommonConstants';
import { VideoModule } from '../view/IndexModule';
import { SwiperVideo } from '../view/IndexSwiper';
import { LIST, MARGIN_FONT_SIZE, ALL_PERCENT } from '../common/constants/CommonConstants';
import Constants from '../common/constants/CommonConstants'

/**
 * Main page
 */
@Entry
@Component
struct MainPage {
  @State currentIndex: number = CommonConstants.HOME_TAB_INDEX;
  private tabsController: TabsController = new TabsController();
  scroller: Scroller = new Scroller()
  photoArr: Array<Resource> =[
  $r('app.media.ic_life_1'),
  $r('app.media.ic_life_0'),
  $r('app.media.ic_life_2'),
  $r('app.media.ic_life_3'),
  $r('app.media.ic_life_4'),
  $r('app.media.ic_life_5'),
  $r('app.media.ic_food_0'),
  $r('app.media.ic_food_1'),
  $r('app.media.ic_men_0'),
  $r('app.media.ic_men_3'),
  $r('app.media.ic_men_2'),
  ];
  @StorageLink('selectedIndex') selectedIndex: number = 0;

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === index ? selectedImg : normalImg)
        .width($r('app.float.mainPage_baseTab_size'))
        .height($r('app.float.mainPage_baseTab_size'))
      Text(title)
        .margin({ top: $r('app.float.mainPage_baseTab_top') })
        .fontSize($r('app.float.main_tab_fontSize'))
        .fontColor(this.currentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
    }
    .justifyContent(FlexAlign.Center)
    .height($r('app.float.mainPage_barHeight'))
    .width(CommonConstants.FULL_PARENT)
    .onClick(() => {
      this.currentIndex = index;
      this.tabsController.changeIndex(this.currentIndex);
    })
  }

  private contactList : Person[] = getContactInfo()
  build() {
    Tabs({
      barPosition: BarPosition.End,
      controller: this.tabsController
    }) {
      TabContent() {
        Column(){
          WeChatTitle({ text: '微信' })
          if (this.contactList.length > 0)
          {
            List()
            {
              ForEach(this.contactList, item =>
              {
                ListItem()
                {
                  ChatItemStyle({
                    WeChatImage: item.WeChatImage,
                    WeChatName: item.WeChatName,
                    ChatInfo: item.ChatInfo,
                    time: item.time,
                  })
                }
              }, item => item.id.toString())
            }
            .height('100%')
            .width('100%')
          }
        }
      }
      .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      .backgroundColor($r('app.color.mainPage_backgroundColor'))
      .tabBar(this.TabBuilder(CommonConstants.HOME_TITLE, CommonConstants.HOME_TAB_INDEX,
        $r('app.media.home_selected'), $r('app.media.home_normal')))

      TabContent(){
        Scroll(this.scroller)
        {
          Column({ space: MARGIN_FONT_SIZE.FOURTH_MARGIN })
          {
            SwiperVideo()
            List()
            {
              ForEach(LIST, (item: string) =>
              {
                ListItem()
                {
                  VideoModule({ moduleName: item })
                    .margin({ top: MARGIN_FONT_SIZE.FIRST_MARGIN })
                }
              }, (item: string) => JSON.stringify(item))
            }
            .listDirection(Axis.Vertical)
            .margin({ top: MARGIN_FONT_SIZE.THIRD_MARGIN })
          Column(){
            Text('近期图片')
              .fontSize(MARGIN_FONT_SIZE.THIRD_MARGIN)
              .fontWeight(FontWeight.Bolder)
            Grid()
            {
              ForEach(this.photoArr, (img: Resource, index?: number) =>
              {
                GridItem()
                {
                  Image(img)
                    .height(CommonConstants.FULL_PERCENT)
                    .width(CommonConstants.FULL_PERCENT)
                    .objectFit(ImageFit.Cover)
                }
                .width(CommonConstants.FULL_PERCENT)
                .aspectRatio(1)
              }, (item: Resource) => JSON.stringify(item))
            }
            .columnsTemplate(CommonConstants.GRID_COLUMNS_TEMPLATE)
            .rowsGap(CommonConstants.LIST_ITEM_SPACE)
            .columnsGap(CommonConstants.LIST_ITEM_SPACE)
            .layoutWeight(1)
          }
          .width(ALL_PERCENT)
          .height(ALL_PERCENT)
          .backgroundColor($r("app.color.index_backgroundColor"))
          }
        }
      }
      .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      .backgroundColor($r('app.color.mainPage_backgroundColor'))
      .tabBar(this.TabBuilder('综合界面', 1,
        $r('app.media.home_selected'), $r('app.media.home_normal')))


      TabContent() {
        Column()
        {
          Image($rawfile('xinxilan.png'))
            .height(90)
            .width('100%')
            .margin({ top: '80px' })

          WeChatItemStyle({ imageSrc: 'pay.png', text: '支付' })
          MyDivider()

          WeChatItemStyle({ imageSrc: 'favorites.png', text: '收藏' })
          MyDivider({ style: '1' })
          WeChatItemStyle({ imageSrc: 'moments2.png', text: '朋友圈' })
          MyDivider({ style: '1' })
          WeChatItemStyle({ imageSrc: 'video.png', text: '视频号' })
          MyDivider({ style: '1' })
          WeChatItemStyle({ imageSrc: 'card.png', text: '卡包' })
          MyDivider({ style: '1' })
          WeChatItemStyle({ imageSrc: 'emoticon.png', text: '表情' })
          MyDivider()

          WeChatItemStyle({ imageSrc: 'setting.png', text: '设置' })
          MyDivider()
        }
        .alignItems(HorizontalAlign.Start)
        .width('100%')
        .height('100%')
      }
      .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      .backgroundColor($r('app.color.mainPage_backgroundColor'))
      .tabBar(this.TabBuilder(CommonConstants.MINE_TITLE, 3,
        $r('app.media.mine_selected'), $r('app.media.mine_normal')))
    }
    .width(CommonConstants.FULL_PARENT)
    .backgroundColor(Color.White)
    .barHeight($r('app.float.mainPage_barHeight'))
    .barMode(BarMode.Fixed)
    .onChange((index: number) => {
      this.currentIndex = index;
    })
  }
}