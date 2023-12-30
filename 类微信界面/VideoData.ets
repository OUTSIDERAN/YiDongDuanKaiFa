import { HorizontalVideoItem } from './HorizontalVideoItem';
import { SwiperVideoItem } from './SwiperVideoItem';

export const SWIPER_VIDEOS: SwiperVideoItem[] = [
  new SwiperVideoItem($r('app.media.banner1')),
  new SwiperVideoItem($r('app.media.banner2')),
  new SwiperVideoItem($r('app.media.banner3'))
];

export const HORIZONTAL_VIDEOS: HorizontalVideoItem[] = [
  new HorizontalVideoItem(1, $r('app.media.video_list0'), '西部魔影'),
  new HorizontalVideoItem(2, $r('app.media.video_list1'), '魔女'),
  new HorizontalVideoItem(3, $r('app.media.video_list2'), '源计划')
];