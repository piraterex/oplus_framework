.class Landroid/hardware/radio/data/QosFilterIpsecSpi$1;
.super Ljava/lang/Object;
.source "QosFilterIpsecSpi.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/QosFilterIpsecSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/data/QosFilterIpsecSpi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/data/QosFilterIpsecSpi;
    .locals 2
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 70
    new-instance v0, Landroid/hardware/radio/data/QosFilterIpsecSpi;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/data/QosFilterIpsecSpi;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/data/QosFilterIpsecSpi-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/QosFilterIpsecSpi$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/data/QosFilterIpsecSpi;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/radio/data/QosFilterIpsecSpi;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 74
    new-array v0, p1, [Landroid/hardware/radio/data/QosFilterIpsecSpi;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/QosFilterIpsecSpi$1;->newArray(I)[Landroid/hardware/radio/data/QosFilterIpsecSpi;

    move-result-object p1

    return-object p1
.end method
