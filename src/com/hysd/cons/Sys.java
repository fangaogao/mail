package com.hysd.cons;

public class Sys {
	/*静态内部类，来标志系统状态常量，方便修改*/
	
	
	public static class Common{
		/*1,启用*/
		public static Integer IS_USE=1;
		/*0,禁用*/
		public static Integer UN_USE=0;
		/*默认一页几条数据*/
		public static Integer PGGESIZE=5;
		/*图片上传路径*/
		public static String FILEPATH="/upImgs";
	}
	
	public static class CmgLog{
		/*日志操作类型：0,创建*/
		public static String CREATE="创建";
		/*日志操作类型：1,修改*/
		public static String UPDATE="修改";
		/*日志操作类型：2,删除*/
		public static String DEL="删除";
		/*日志操作类型：3,登录*/
		public static String LOGIN="登录"; 
		/*日志操作类型：4,其它*/
		public static String OTHER="其它"; 
	}
}
