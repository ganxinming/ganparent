package cn.gan;

import java.util.Scanner;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Hello world!
 *
 */
public class Main implements  Runnable{
    private static Lock lock=new ReentrantLock(true);

    public static void main( String[] args ) throws InterruptedException {
        Main app=new Main();
        Thread A=new Thread(app,"A");
        Thread B=new Thread(app,"B");
        Thread C=new Thread(app,"C");
        Scanner cin=new Scanner(System.in);
        String s=cin.nextLine();
        System.out.print(s);
        A.start();
        Thread.sleep(1000);
        B.start();
        Thread.sleep(1000);
        C.start();

    }

    @Override
    public void run() {
        lock.lock();
        System.out.print("_"+Thread.currentThread().getName());
        lock.unlock();
    }

}
