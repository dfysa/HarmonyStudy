
import Choice from '../view/ChoicePage'
import Home from '../view/HomePage'
import Mine from '../view/MinePage'

interface Item {
  title: string;
  iconSelected:Resource;
  iconNormal:Resource;
}
@Entry
@Component
struct Main {
  @State message: string = '首页';
  private controller: TabsController =new TabsController(); //Tabs组件的控制器，用于控制Tabs组件进行页签切换
  private items: Array<Item> = [
    { title: '首页',iconSelected:$r('app.media.ic_home_selected'),iconNormal:$r('app.media.ic_home_normal') },
    { title: '精选',iconSelected:$r('app.media.ic_discover_selected'),iconNormal:$r('app.media.ic_discover_normal') },
    { title: '我的',iconSelected:$r('app.media.ic_mine_selected'),iconNormal:$r('app.media.ic_mine_normal') },
  ];
  @State currentIndex:number=0; //当前索引 0

  // @Builder 装饰器 自定义构建函数
  @Builder
  TabBuilder(title: string, iconSelected: Resource, iconNormal: Resource, index: number) {
    Column() {
      Image(this.currentIndex === index ? iconSelected : iconNormal)
        .width('25vp')
        .height('25vp');
      Text(title)
        .fontColor(this.currentIndex === index ? '#007dee':'#182431')
        .fontSize('14fp')
        .fontWeight(500);
    }
    .width('100%');
  }


  build() {
    Row() {
      Tabs({barPosition:BarPosition.End}){
        ForEach(this.items,(item:Item,index:number)=>{
          TabContent(){
            //页签的内容
            Column(){
              //加载不同的组件
              if (index===0) {
                Home()

              }else if (index===1){
                Choice()
              }else {
                Mine()
              }
            }
          }.tabBar(this.TabBuilder(item.title,item.iconSelected,item.iconNormal,index))
        })
      }
      .vertical(false)
      .barWidth('100%') //宽度
      .barHeight('70vp') //高度
      .animationDuration(400)
      .onChange((index:number)=>{
        this.currentIndex=index;
      })
    }
    .height('100%')
    .width('100%')
  }
}