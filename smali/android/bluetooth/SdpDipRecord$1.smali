.class Landroid/bluetooth/SdpDipRecord$1;
.super Ljava/lang/Object;
.source "SdpDipRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SdpDipRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpDipRecord;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 98
    new-instance v0, Landroid/bluetooth/SdpDipRecord;

    invoke-direct {v0, p1}, Landroid/bluetooth/SdpDipRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpDipRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpDipRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/SdpDipRecord;
    .locals 1
    .param p1, "size"    # I

    .line 101
    new-array v0, p1, [Landroid/bluetooth/SdpDipRecord;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpDipRecord$1;->newArray(I)[Landroid/bluetooth/SdpDipRecord;

    move-result-object p1

    return-object p1
.end method
