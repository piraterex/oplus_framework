.class Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID$1;
.super Ljava/lang/Object;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 312
    new-instance v0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

    invoke-direct {v0}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;-><init>()V

    .line 313
    .local v0, "_aidl_out":Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;
    invoke-virtual {v0, p1}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->readFromParcel(Landroid/os/Parcel;)V

    .line 314
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 309
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 318
    new-array v0, p1, [Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 309
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID$1;->newArray(I)[Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

    move-result-object p1

    return-object p1
.end method
