public class CarsAssemble {

    public double productionRatePerHour(int speed) {
        int carsPerHour = 221 * speed;
        if (speed <= 4) {
            return carsPerHour;
        } else if (speed <= 8) {
            return carsPerHour * 0.9;
        } else if (speed == 9) {
            return carsPerHour * 0.8;
        } else if (speed == 10) {
            return carsPerHour * 0.77;
        } else {
            return 0;
        }
    }

    public int workingItemsPerMinute(int speed) {
        return (int)productionRatePerHour(speed) / 60;
    }
}
