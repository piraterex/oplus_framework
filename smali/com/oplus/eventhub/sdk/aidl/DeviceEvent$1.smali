.class Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$1;
.super Ljava/lang/Object;
.source "DeviceEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    new-instance v0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;

    invoke-direct {v0, p1}, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
    .locals 1
    .param p1, "size"    # I

    .line 119
    new-array v0, p1, [Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$1;->newArray(I)[Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;

    move-result-object p1

    return-object p1
.end method
