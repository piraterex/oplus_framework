.class public Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;
.super Ljava/lang/Object;
.source "EventRequestConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDeviceEventSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig$1;

    invoke-direct {v0}, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig$1;-><init>()V

    sput-object v0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-class v0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 63
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->mDeviceEventSet:Landroid/util/ArraySet;

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "events":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->mDeviceEventSet:Landroid/util/ArraySet;

    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->mDeviceEventSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllEvents()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 52
    .local v0, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->mDeviceEventSet:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->mDeviceEventSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;

    .line 54
    .local v2, "event":Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
    invoke-virtual {v2}, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->getEventType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v2    # "event":Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
    goto :goto_0

    .line 57
    :cond_0
    return-object v0
.end method

.method public whitelist getDeviceEventSet()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->mDeviceEventSet:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->mDeviceEventSet:Landroid/util/ArraySet;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->mDeviceEventSet:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 85
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->mDeviceEventSet:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 86
    return-void
.end method
