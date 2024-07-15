import router from '@ohos.router'
import promptAction  from '@ohos.promptAction';

@Entry
@Component
struct Login {
  @State message: string = '登录';
  @State user:string='';//用户名
  @State password:string=''; //密码
  private otherData:Array<string> =[
    "微信","QQ","手机"
  ]

  build() {
   Row() {
    Column(){
      //LOGO
      Image($r('app.media.icon'))
        .width(80)
        .height(80)
        .margin({bottom:20})
      //欢迎登录
      Text(this.message)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
       //用户名和密码
      TextInput({placeholder:"请输入用户名"})
        .inputStyle()
        .onChange(data=>{// 输入值发生变化使。触发回调，data代表输入的内容
          this.user=data;
          console.info('user:'+data)

        })

      TextInput({placeholder:"请输入密码"})
        .type(InputType.Password)
        .inputStyle()
        .onChange(data=>{// 输入值发生变化使。触发回调，data代表输入的内容
          this.password=data;
          console.info('password:'+data)

        })

      //文字提示
      Row(){
        Text('短信验证码登录')
          .fontSize('18fp')
          .fontColor(Color.Blue)
        Text('忘记密码')
          .fontSize('18fp')
          .fontColor(Color.Blue)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)
      //登录按钮
      Button('登录',{type:ButtonType.Capsule,stateEffect:true})
        .width('90%')
        .margin('20vp')
        .onClick(()=>{
          //判断
          if(this.user==''||this.password==''){
            //不能跳转，同时给出弹窗提示
            promptAction.showToast({
              message:"用户名或密码不能为空",
              duration:3000,//持续时间
              bottom:"60vp"
            })
          }else{
            //路由跳转
            router.pushUrl({
              url:'pages/MainPage'
            }).catch((error:Error)=>{
              //错误提示
            })

          }




        })

      //其他
      Row(){
        Text('其他登录方式')
          .fontSize('18fp')
          .fontColor(Color.Blue)
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)

      Row(){
        ForEach(this.otherData,(item:string)=>{
          Button(item,{type:ButtonType.Circle,stateEffect:true})
            .btnWidthStyle()  //公共函数样式
        },(item:string)=>JSON.stringify(item))
        // Button('微信',{type:ButtonType.Circle,stateEffect:true})
        //   .btnWidthStyle()
        // Button('QQ',{type:ButtonType.Circle,stateEffect:true})
        //   .btnWidthStyle()
        // Button('手机',{type:ButtonType.Circle,stateEffect:true})
        //   .btnWidthStyle()
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)
      .margin({top:'20vp'})

    }
    .width('100%')
    }
    .height('100%')
  }
}


//添加公共的样式函数
//@Extend装饰器：扩展组件样式
//@Extend（组件描述名称）function 样式名称(){}
@Extend(TextInput)function inputStyle(){
  .placeholderColor(0x999999)
  .maxLength(6)
  .padding(12)
  .margin(10)
}

@Extend(Button)function btnWidthStyle(){
  .width(88)
  .height(80)
}