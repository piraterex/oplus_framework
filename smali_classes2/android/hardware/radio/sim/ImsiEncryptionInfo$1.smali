.class Landroid/hardware/radio/sim/ImsiEncryptionInfo$1;
.super Ljava/lang/Object;
.source "ImsiEncryptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/ImsiEncryptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/sim/ImsiEncryptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/sim/ImsiEncryptionInfo;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 18
    new-instance v0, Landroid/hardware/radio/sim/ImsiEncryptionInfo;

    invoke-direct {v0}, Landroid/hardware/radio/sim/ImsiEncryptionInfo;-><init>()V

    .line 19
    .local v0, "_aidl_out":Landroid/hardware/radio/sim/ImsiEncryptionInfo;
    invoke-virtual {v0, p1}, Landroid/hardware/radio/sim/ImsiEncryptionInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 20
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/ImsiEncryptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/sim/ImsiEncryptionInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/radio/sim/ImsiEncryptionInfo;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 24
    new-array v0, p1, [Landroid/hardware/radio/sim/ImsiEncryptionInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/ImsiEncryptionInfo$1;->newArray(I)[Landroid/hardware/radio/sim/ImsiEncryptionInfo;

    move-result-object p1

    return-object p1
.end method
