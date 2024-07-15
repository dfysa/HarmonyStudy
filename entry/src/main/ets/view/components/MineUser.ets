import {ItemType} from '../../mode/types'

@Component
export default struct MineUser {
  @State message: string = '用户描述';



  build() {
   Row(){
     Image($r('app.media.ic_love'))
       .width('50vp')
       .height('50vp')
     Column(){
       Text('张三')
         .fontSize('20fp')
       Text('111111111@qq.com')
         .fontSize('14fp')
         .margin({top:'5vp'})
     }
     .alignItems(HorizontalAlign.Start)
     .margin({left:'15vp'})
   }
   .alignItems(VerticalAlign.Center)
    .backgroundColor(Color.White)
    .width('100%')
    .height('100vp')
    .margin({top:'30vp',
    bottom:'12vp'})
    .borderRadius('25vp')
    .padding({left:'20vp'})


  }
}