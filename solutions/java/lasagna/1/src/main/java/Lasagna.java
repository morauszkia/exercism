public class Lasagna {
    public int expectedMinutesInOven() {
        return 40;
    }

    public int remainingMinutesInOven(int minutesPassed) {
        return expectedMinutesInOven() - minutesPassed;
    }
    
    public int preparationTimeInMinutes(int layers) {
        return layers * 2;
    }

    public int totalTimeInMinutes(int layers, int minutesPassed) {
        return preparationTimeInMinutes(layers) + minutesPassed;
    }
}
