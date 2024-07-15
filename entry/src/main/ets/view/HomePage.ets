import  SwiperExample from './components/SwiperExample'
import NavExample from './components/NavExample'
import  ListExample from './components/ListExample'


@Component
export default struct Home {



  build() {
   Scroll(){
     Column() {
       Text('Home')
         .fontSize('20fp')
         .fontWeight(FontWeight.Medium)
         .alignSelf(ItemAlign.Start)
         .margin('10vp')
       //轮播图
       SwiperExample()
       //导航
       NavExample()
       //列表
       ListExample()



     }.width('100%')
   }


  }
}