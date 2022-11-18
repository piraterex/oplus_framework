.class Landroid/hardware/devicestate/DeviceStateInfo$1;
.super Ljava/lang/Object;
.source "DeviceStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/devicestate/DeviceStateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/devicestate/DeviceStateInfo;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .local v0, "numberOfSupportedStates":I
    new-array v1, v0, [I

    .line 148
    .local v1, "supportedStates":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v1, v2

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .local v2, "baseState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .local v3, "currentState":I
    new-instance v4, Landroid/hardware/devicestate/DeviceStateInfo;

    invoke-direct {v4, v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>([III)V

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/DeviceStateInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/devicestate/DeviceStateInfo;
    .locals 1
    .param p1, "size"    # I

    .line 159
    new-array v0, p1, [Landroid/hardware/devicestate/DeviceStateInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/DeviceStateInfo$1;->newArray(I)[Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p1

    return-object p1
.end method
