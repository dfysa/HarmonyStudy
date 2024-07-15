import router from '@ohos.router'
import  MineList from '../../components/MineList'
import  MineUser from '../../components/MineUser'

@Component
export default struct Sat {
  @State message: string = '关注';


  build() {
    Row() {
      Column(){
        Text(this.message)
          .fontSize('16fp')
          .alignSelf(ItemAlign.Start)

        //用户描述
        MineUser()
        //列表
        MineList()
        //退出登录
        Button('退出登录')
          .width('90%')
          .height('40vp')
          .fontSize('16fp')
          .backgroundColor('#e5e8ea')
          .fontColor(Color.Red)
          .margin({
            top:'30vp'
          })
          .onClick(()=>{
            //跳转
            router.pushUrl({
              url:'pages/LoginPage' //跳转到登录
            }).catch((error:Error)=>{
              //异常处理
            })
          })
      }
      .width('95%')
      .margin('10vp')
      .padding('10vp')
      .height('100%')
    }

    .backgroundColor('#f1f3f5')

  }
}