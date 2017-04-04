package by.it.radivonik.jd02_03;

import java.util.*;

/**
 * Created by Radivonik on 31.03.2017.
 * Класс, реализующий поведение покупателя в магазине
 */
public class Buyer implements IBuyer, IUseBasket, Runnable, Comparable<Buyer> {
    private String name;
    private int num;
    private int numQueue = 0;
    private boolean pensioner;
    private boolean waitCashier;
    public List<Good> goods = new ArrayList<>();

    Buyer(int num, boolean pensioner) {
        name = "Покупатель № " + num + (pensioner ? " (пенс.)" : "");
        this.num = num;
        this.pensioner = pensioner;
    }

    @Override
    public String toString() {
        return name + (numQueue == 0 ? "" : "(очер." + numQueue + ")");
    }

    @Override
    public void run() {
        enterToMarket();
        takeBasket();
        chooseGoods();
        putGoodsToBasket();
        goToQueue();
        backBasket();
        goToOut();
    }

    @Override
    public int compareTo(Buyer o) {
        return this.getNumCompare() - o.getNumCompare();
    }

    private int getNumCompare() {
        return pensioner ? Integer.MIN_VALUE + 1000000 + numQueue : numQueue;
    }

    @Override
    public void enterToMarket() {
//        System.out.println(this + " зашел в магазин");
    }

    @Override
    public void takeBasket() {
        Helper.sleep(Helper.getRandom(100,200),getMul());
//        System.out.println(this + " взял корзину");
    }

    @Override
    public void putGoodsToBasket() {
        Helper.sleep(Helper.getRandom(100,200),getMul());
//        System.out.println(this + " положил товар в корзину");
    }

    @Override
    public void chooseGoods() {
//        System.out.println(this + " вошел в торговый зал");
        int countGood = Helper.getRandom(1,4); // от 1 до 4-х продуктов
        for (int i = 0; i < countGood; i++) {
            int timeout = Helper.getRandom(500,2000);
            Helper.sleep(timeout,getMul());
            Good good = Goods.getRandomGood();
            goods.add(good);
//            System.out.printf("%s выбрал товар %s с ценой %s\n",this,good.getName(),good.getPrice());
        }
//        System.out.println(this + " завершил выбор товаров");
    }

    @Override
    public void goToQueue() {
        numQueue = QueueBuyers.getNumNext();
        QueueBuyers.add(this);
//        System.out.println("->" + this + " встал в очередь: " + QueueBuyers.queueToString());
        synchronized (this) {
            waitCashier = true;
            while (waitCashier) {
                try {
                    this.wait();
                }
                catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
//        System.out.println(this + " завершил обслуживание");
    }

    @Override
    public void backBasket() {
        Helper.sleep(Helper.getRandom(100,200),getMul());
//        System.out.println(this + " вернул корзину");
    }

    @Override
    public void goToOut() {
//        System.out.println("<-" + this + " вышел из магазина");
        DispatcherCashiers.addCountBuyerCoplete(1);
    }

    // Множитель длительности операций для определенных категорий покупателей
    // для пенсионеров = 1.5
    private double getMul() {
        return pensioner ? 1.5 : 1.0;
    }

    public int getNumQueue() {
        return numQueue;
    }

    public boolean isPensioner() {
        return pensioner;
    }

    public void setWaitCashier(boolean waitCsahier) {
        this.waitCashier = waitCashier;
    }
}
