import {ItemType} from '../../mode/types'
import promptAction from '@ohos.promptAction';
@Component
export default struct MineList {
  @State message: string = '我的列表';
  private listsData:Array<ItemType> =[
    {
      title:'推送通知',
      img:$r('app.media.ic_message')
    },
    {
      title:'数据管理',
      img:$r('app.media.ic_menu')
    },
    {
      title:'推送通知',
      img:$r('app.media.ic_message')
    },
    {
      title:'数据管理',
      img:$r('app.media.ic_menu')
    },
    {
      title:'推送通知',
      img:$r('app.media.ic_message')
    },
    {
      title:'数据管理',
      img:$r('app.media.ic_menu')
    },
    {
      title:'推送通知',
      img:$r('app.media.ic_message')
    },
    {
      title:'数据管理',
      img:$r('app.media.ic_menu')
    },
  ]


  build() {
   List(){
     ForEach(this.listsData,(item:ItemType)=>{
       ListItem(){
         Row(){
           Row({space:10}){
             Image(item.img)
               .width('22vp')
               .height('22vp')
             Text(item.title)
               .fontSize('16fp')
           }
           //开关组件
           //isOn 开关的打开或是关闭的状态 true为打开
           Toggle({type:ToggleType.Switch,isOn:false})
             .onChange((isChange:boolean)=>{
               let tip:string =isChange?'系统选项打开':"系统选项关闭"
               promptAction.showToast({
                 message:tip,
                 duration:3000,
               })


             })


         }
         .width('100%')
         .justifyContent(FlexAlign.SpaceBetween)
         .padding('12vp')


       }
       .height('50vp')
     })

   }
   .width('100%')
    .backgroundColor(Color.White)
    .borderRadius('25vp')
   .divider({
     color:'#dddd',
     strokeWidth:'1vp',
     startMargin:'12vp', // 分割线开始的位置
     endMargin:"12vp"
   })
    .padding({
      top:'5vp',
      bottom:'5vp'
    })


  }
}