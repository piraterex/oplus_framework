.class Landroid/hardware/gnss/IGnssDebug$TimeDebug$1;
.super Ljava/lang/Object;
.source "IGnssDebug.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssDebug$TimeDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/gnss/IGnssDebug$TimeDebug;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IGnssDebug$TimeDebug;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 206
    new-instance v0, Landroid/hardware/gnss/IGnssDebug$TimeDebug;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssDebug$TimeDebug;-><init>()V

    .line 207
    .local v0, "_aidl_out":Landroid/hardware/gnss/IGnssDebug$TimeDebug;
    invoke-virtual {v0, p1}, Landroid/hardware/gnss/IGnssDebug$TimeDebug;->readFromParcel(Landroid/os/Parcel;)V

    .line 208
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssDebug$TimeDebug$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IGnssDebug$TimeDebug;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/gnss/IGnssDebug$TimeDebug;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 212
    new-array v0, p1, [Landroid/hardware/gnss/IGnssDebug$TimeDebug;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssDebug$TimeDebug$1;->newArray(I)[Landroid/hardware/gnss/IGnssDebug$TimeDebug;

    move-result-object p1

    return-object p1
.end method
