import {FollowListType} from '../../mode/types'
import promptAction from '@ohos.promptAction';
@Component
export default struct FollowList {
  @State message: string = '我的列表';
  private listsData:Array<FollowListType> =[
    {
      title:'畅乐冰晶低脂新品',
      img:$r('app.media.banner_1'),
      isNew:true,
      comment:6662,
      favourite:95,
      price:28,
    },
    {
      title:'奶茶自然清新亲近自然',
      img:$r('app.media.banner_2'),
      isNew:true,
      comment:3215,
      favourite:75,
      price:35,
    },
    {
      title:'畅乐冰晶低脂新品',
      img:$r('app.media.banner_1'),
      isNew:true,
      comment:6662,
      favourite:95,
      price:28,
    },
    {
      title:'奶茶自然清新亲近自然',
      img:$r('app.media.banner_2'),
      isNew:true,
      comment:3215,
      favourite:75,
      price:35,
    },    {
    title:'畅乐冰晶低脂新品',
    img:$r('app.media.banner_1'),
    isNew:true,
    comment:6662,
    favourite:95,
    price:28,
  },
    {
      title:'奶茶自然清新亲近自然',
      img:$r('app.media.banner_2'),
      isNew:true,
      comment:3215,
      favourite:75,
      price:35,
    },    {
    title:'畅乐冰晶低脂新品',
    img:$r('app.media.banner_1'),
    isNew:true,
    comment:6662,
    favourite:95,
    price:28,
  },
    {
      title:'奶茶自然清新亲近自然',
      img:$r('app.media.banner_2'),
      isNew:true,
      comment:3215,
      favourite:75,
      price:35,
    },
    {
      title:'畅乐冰晶低脂新品',
      img:$r('app.media.banner_1'),
      isNew:true,
      comment:6662,
      favourite:95,
      price:28,
    },
    {
      title:'奶茶自然清新亲近自然',
      img:$r('app.media.banner_2'),
      isNew:true,
      comment:3215,
      favourite:75,
      price:35,
    },
  ]


  build() {
   List(){
     ForEach(this.listsData,(item:FollowListType)=>{
       ListItem(){
         Row(){
           Row({space:10}){
             Image(item.img)
               .width('40%')
               .height('100%')
               .borderRadius('10vp')
             Column() {
               Text(item.title)
                 .fontSize('20fp')
                 .fontWeight(FontWeight.Bold)
               Text('重磅推荐，MD新品试用中')
                 .fontSize('13fp')
                 .fontColor(Color.Gray)
               Row() {
                 Text(item.comment + '人评价')
                   .fontSize('13fp')
                 Text(item.favourite + '%好评')
                   .fontSize('13fp')
                 Text('￥' + item.price)
                   .fontSize('18fp')
                   .fontWeight(FontWeight.Bold)
                   .fontColor(Color.Red)
               }
                .width('58%')
               .justifyContent(FlexAlign.SpaceBetween) // Row 水平方向内容均匀分布
             }
             .height('100%') // 确保 Column 的高度是 100%
             .justifyContent(FlexAlign.SpaceBetween) // Column 竖直方向内容均匀分布
             .alignItems(HorizontalAlign.Start) // Column 水平方向内容靠左对齐
             // .justifyContent()
             // .justifyContent(FlexAlign.SpaceBetween)


           }


         }
         .width('100%')
         .justifyContent(FlexAlign.SpaceBetween)
         .padding('12vp')


       }

       .height('120vp')
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