package Model;

import java.math.BigDecimal;

public class Package {

    private int packageId;
    private String packageName;
    private String destination;
    private int durationDays;
    private String description;
    private BigDecimal price;
    private String imageUrl;

    // Default Constructor
    public Package() {
    }

    // Parameterized Constructor
    public Package(int packageId, String packageName, String destination,
                   int durationDays, String description,
                   BigDecimal price, String imageUrl) {

        this.packageId = packageId;
        this.packageName = packageName;
        this.destination = destination;
        this.durationDays = durationDays;
        this.description = description;
        this.price = price;
        this.imageUrl = imageUrl;
    }

    // Getters and Setters

    public int getPackageId() {
        return packageId;
    }

    public void setPackageId(int packageId) {
        this.packageId = packageId;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public int getDurationDays() {
        return durationDays;
    }

    public void setDurationDays(int durationDays) {
        this.durationDays = durationDays;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {
        return "Package [packageId=" + packageId
                + ", packageName=" + packageName
                + ", destination=" + destination
                + ", durationDays=" + durationDays
                + ", description=" + description
                + ", price=" + price
                + ", imageUrl=" + imageUrl + "]";
    }
}