import {ItemType} from '../../mode/types'

interface NavItem {
  title: string;
  img: Resource;
}
@Component
export default struct NavExample {
  @State message: string = '导航组件';
  private navData: NavItem[] =[
    {
      title:'我的最爱',
      img:$r('app.media.ic_love')
    },
    {
      title:'购物车',
      img:$r('app.media.ic_shopping')
    },
    {
      title:'我的最爱',
      img:$r('app.media.ic_love')
    },
    {
      title:'购物车',
      img:$r('app.media.ic_shopping')
    },  {
    title:'我的最爱',
    img:$r('app.media.ic_love')
  },
    {
      title:'购物车',
      img:$r('app.media.ic_shopping')
    },  {
    title:'我的最爱',
    img:$r('app.media.ic_love')
  },
    {
      title:'购物车',
      img:$r('app.media.ic_shopping')
    },
  ]

  build() {
   Column() {
     Grid(){
       ForEach(this.navData,(item:ItemType)=>{
         GridItem(){
           Column(){
             Image(item.img)
               .width('25vp')
               .height('25vp')
             Text(item.title)
               .fontSize('14fp')
           }
         }
       })
     }
     .columnsTemplate('1fr 1fr 1fr 1fr')
     .rowsTemplate('1fr 1fr ')
     .height('120vp')
     .rowsGap('12vp')
     .columnsGap('8vp')
     .backgroundColor(Color.White)
     .width('95%')
     .margin('13vp')
     .padding({
       top:'10vp',
       bottom:'10vp'
     })



    }


  }
}