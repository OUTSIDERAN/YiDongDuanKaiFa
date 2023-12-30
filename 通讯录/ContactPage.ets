import { ContactItemStyle, WeChatTitle } from '../Common/CommonStyle'
import { Person } from '../Common/Person'
import { getContactInfo, WeChatColor ,GetAddInfo} from '../Common/WeChatData'
@Entry
@Component
export struct ContactPage{
  @State contactList : Person[] = getContactInfo()
  build(){
    Column(){
      Flex(){
        WeChatTitle({text:'通讯录'})
        Row()
        {
          Button('+')
            .onClick(()=>{
              this.contactList.unshift(GetAddInfo())
            })
            .backgroundColor(Color.Black)
            .fontColor(Color.White)
            .fontSize('30')
        }
        .backgroundColor(Color.Black)
      }


      Scroll(){
        Column(){
          ContactItemStyle({imageSrc:'new_friend.png',text:'新的朋友'})
          ContactItemStyle({imageSrc:'group.png',text:'群聊'})
          ContactItemStyle({imageSrc:'biaoqian.png',text:'标签'})
          ContactItemStyle({imageSrc:'gonzh.png',text:'公众号'})
          Text('我的企业及企业联系人')
            .fontColor(Color.White)
            .fontSize('12fp')
            .backgroundColor(Color.Black)
            .height('80px')
            .width('100%')
          ContactItemStyle({imageSrc:'qywx_xuexiao.png',text:'华北科技学院'})
          ContactItemStyle({imageSrc:'qywx_nmgdx.png',text:'内蒙古大学'})
          Text('我的微信好友')
            .fontSize('12fp')
            .fontColor(Color.White)
            .backgroundColor(Color.Black)
            .height('80px')
            .width('100%')
          List(){
            ForEach(this.contactList,item=>{
              ListItem(){
                ContactItemStyle({imageSrc:item.WeChatImage,text:item.WeChatName})
                .onClick(()=>{
                  this.contactList.splice(this.contactList.indexOf(item), 1)
                })
              }
            },item=>item.id.toString())
          }
        }
      }
    }
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .height('100%')
  }
}