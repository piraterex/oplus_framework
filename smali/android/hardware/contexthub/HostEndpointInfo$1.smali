.class Landroid/hardware/contexthub/HostEndpointInfo$1;
.super Ljava/lang/Object;
.source "HostEndpointInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HostEndpointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/contexthub/HostEndpointInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contexthub/HostEndpointInfo;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 16
    new-instance v0, Landroid/hardware/contexthub/HostEndpointInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/HostEndpointInfo;-><init>()V

    .line 17
    .local v0, "_aidl_out":Landroid/hardware/contexthub/HostEndpointInfo;
    invoke-virtual {v0, p1}, Landroid/hardware/contexthub/HostEndpointInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 18
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/HostEndpointInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contexthub/HostEndpointInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/contexthub/HostEndpointInfo;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 22
    new-array v0, p1, [Landroid/hardware/contexthub/HostEndpointInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/HostEndpointInfo$1;->newArray(I)[Landroid/hardware/contexthub/HostEndpointInfo;

    move-result-object p1

    return-object p1
.end method
