@Component
export default struct SwiperExample {
  @State swiperData:Array<Resource>=[
    $r('app.media.banner_1'),
    $r('app.media.banner_2'),
    $r('app.media.banner_3'),
  ]


  build() {
    Column() {
     Swiper(){
       ForEach(this.swiperData,(item:Resource)=>{
         Image(item)
           .width('95%')
           .height('160vp')
       })
     }
      .index(0)  //初始化索引值
      .autoPlay(true)  //自动播放
      .interval(5000)  //播放间隔
      .loop(true)  //是否循环
      .duration(1500)  //动画时间长度
      .itemSpace(0)  //图片间隙
      .indicator(true)  //是否启用轮播点


    }
    // .height('100%')

  }
}