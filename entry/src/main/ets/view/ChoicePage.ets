import FollowList from './components/FollowList'
@Component
export default struct Choice {
  @State private selectedIndex: number = 0;
  private controller: TabsController = new TabsController()
  private itemList = [
    "关注",
    "运动",
    "生鲜",
    "数码",
    "科技",
  ]

  // @Builder TabBuilder(title: string, targetIndex: number) {
  //   Column() {
  //     Text(title)
  //       .fontColor(this.selectedIndex === targetIndex ? '#1698CE' : '#6B6B6B')
  //   }
  //   .height(50)
  //   .justifyContent(FlexAlign.Center)
  //   .onClick(() => {
  //     this.selectedIndex = targetIndex;
  //     this.controller.changeIndex(targetIndex);
  //   });
  //
  // }

  build() {
    Column() {
      //BarPosition.Start
      //BarPosition.End
      Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {

        ForEach(this.itemList, (item:string,index:number) => {
          TabContent() {
            Column() {
              // 在第一个选项卡内容中使用 Follow 组件
              if (index === 0) {
                FollowList()
              } else if(index===1){
                FollowList()
              }else if(index===2){
                FollowList()
              }
              else if(index===3){
                FollowList()
              }
              else if(index===4){
                FollowList()
              }
            }
            .width('100%')
            .height('100%') // 如果需要垂直居中，确保高度设置正确
            .alignItems(HorizontalAlign.Center) // 水平居中子组件

          }
          .tabBar({
            text: item
          })
          // .tabBar(this.TabBuilder(item, index));

        })
      }
      // .vertical(true) //开启侧边导航栏
      // .barWidth(100) //开启侧边导航栏，设置barWidth
      // .barHeight(300) //开启侧边导航栏，设置barHeight
      .barWidth('100%') // 开启顶部/底部导航栏，设置TabBar宽度
      .barHeight(60) // 开启顶部/底部导航栏，设置TabBar高度
      .width('100%') // 设置Tabs组件宽度
      .height('100%') // 设置Tabs组件高度
      // .backgroundColor(0xffADD8E6) // 设置Tabs组件背景颜色
      .onChange((index: number) => {
        this.selectedIndex = index;
      }
      )

    }
    .width('100%')
    .height('100%')

  }


}
