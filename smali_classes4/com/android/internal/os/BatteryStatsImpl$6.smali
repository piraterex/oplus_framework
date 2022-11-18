.class Lcom/android/internal/os/BatteryStatsImpl$6;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/os/BatteryStatsImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 19120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 19122
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 19120
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$6;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1
    .param p1, "size"    # I

    .line 19126
    new-array v0, p1, [Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19120
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$6;->newArray(I)[Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object p1

    return-object p1
.end method
