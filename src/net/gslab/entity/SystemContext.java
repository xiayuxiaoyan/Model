package net.gslab.entity;

public class SystemContext {
	private static ThreadLocal<Integer> offSet = new ThreadLocal<Integer>();
	private static ThreadLocal<Integer> size = new ThreadLocal<Integer>();
	public static Integer getOffSet() {
		return offSet.get();
	}
	public static void setOffSet(Integer _offSet) {
		SystemContext.offSet.set(_offSet); 
	}
	public static void removeOffSet(){
		offSet.remove();
	}
	public static Integer getSize() {
		return size.get();
	}
	public static void setSize(Integer _size) {
		SystemContext.size.set(_size);
	}
	public static void removeSize(){
		size.remove();
	}
	
	
}
