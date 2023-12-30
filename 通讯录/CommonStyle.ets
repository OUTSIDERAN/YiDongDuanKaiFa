import router from '@ohos.router';
import Prompt from '@system.prompt';

import { WeChatColor } from './WeChatData';
@Component
export struct WeChatTitle {
  private text : string;
  build(){
    Flex({justifyContent:FlexAlign.Center,alignItems:ItemAlign.Center}){
      Text(this.text)
        .fontSize('18fp')
        .padding('20px')
        .fontColor(Color.White)
    }
    .height('120px')
    .backgroundColor(Color.Black)
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
    .onClick(()=>{
      // this.allNumber--
      router.pushUrl({url:'pages/ChatDetailPage',params:{
        WeChatImage:this.WeChatImage,
        WeChatName : this.WeChatName,
        ChatInfo : this.ChatInfo
      }})
    })
  }
}

@Component
export struct MyDivider{
  private style : string = ''
  build(){
    Row(){
      Divider()
        .vertical(false)
        .color(WeChatColor)
        .strokeWidth(this.style=='1'?'3px':'23px')
    }
    .height(this.style=='1'?'3px':'23px')
    .width('100%')
  }
}

@Component
export struct ContactItemStyle {
  private imageSrc : string;
  private text : string;
  build(){
    Column(){
      Flex({justifyContent:FlexAlign.Start,alignItems:ItemAlign.Center}){
        Image($rawfile(this.imageSrc))
          .width('100px')
          .height('100px')
          .margin({left:'50px'})
        Text(this.text)
          .fontSize('15vp')
          .margin({left:'40px'})
          .flexGrow(1)
          .fontColor(Color.White)
      }
      .height('150px')
      .width('100%')
      .backgroundColor(Color.Black)
    }
  }
}
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








