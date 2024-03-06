package com.sgsone.returnrescue.vo;

public class ProductCountVO {

    private int pickupCount;

    public int getPickupCount() {
        return pickupCount;
    }

    public void setPickupCount(int pickupCount) {
        this.pickupCount = pickupCount;
    }

    public int getMoveCount() {
        return moveCount;
    }

    public void setMoveCount(int moveCount) {
        this.moveCount = moveCount;
    }

    public int getArrivalCount() {
        return arrivalCount;
    }

    public void setArrivalCount(int arrivalCount) {
        this.arrivalCount = arrivalCount;
    }

    public int getInpsectionCount() {
        return inpsectionCount;
    }

    public void setInpsectionCount(int inpsectionCount) {
        this.inpsectionCount = inpsectionCount;
    }

    public int getReadyCount() {
        return readyCount;
    }

    public void setReadyCount(int readyCount) {
        this.readyCount = readyCount;
    }

    public int getCompleteCount() {
        return completeCount;
    }

    public void setCompleteCount(int completeCount) {
        this.completeCount = completeCount;
    }

    private int moveCount;
    private int arrivalCount;
    private int inpsectionCount;
    private int readyCount;
    private int completeCount;

    private int sellingCount;

    public int getSellingCount() {
        return sellingCount;
    }

    public void setSellingCount(int sellingCount) {
        this.sellingCount = sellingCount;
    }

    public int getStopCount() {
        return stopCount;
    }

    public void setStopCount(int stopCount) {
        this.stopCount = stopCount;
    }

    public int getSoldOutCount() {
        return soldOutCount;
    }

    public void setSoldOutCount(int soldOutCount) {
        this.soldOutCount = soldOutCount;
    }

    private int stopCount;
    private int soldOutCount;
}
