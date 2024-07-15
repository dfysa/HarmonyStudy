export interface ItemType{
  //在实际过程中，每个属性并非是确定的，所以加个问号，表明可选，即可有可无
  id?:number;
  title?:string |Resource;
  img?:string |Resource;

}

export interface FollowListType{
  id?:number;
  title?:string |Resource;
  img?:string |Resource;
  isNew?:boolean|Resource;
  comment?:number|Resource;
  price?:number|Resource;
  favourite?:number|Resource;

}