.class public final Landroid/bluetooth/DeviceGroup;
.super Ljava/lang/Object;
.source "DeviceGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/DeviceGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExclusiveAccessSupport:Z

.field private blacklist mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGroupId:I

.field private final blacklist mIncludingSrvcUUID:Landroid/os/ParcelUuid;

.field private blacklist mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Landroid/bluetooth/DeviceGroup$1;

    invoke-direct {v0}, Landroid/bluetooth/DeviceGroup$1;-><init>()V

    sput-object v0, Landroid/bluetooth/DeviceGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/List;Landroid/os/ParcelUuid;Z)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "size"    # I
    .param p4, "includingSrvcUUID"    # Landroid/os/ParcelUuid;
    .param p5, "exclusiveAccessSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;",
            "Landroid/os/ParcelUuid;",
            "Z)V"
        }
    .end annotation

    .line 69
    .local p3, "groupDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    iput p1, p0, Landroid/bluetooth/DeviceGroup;->mGroupId:I

    .line 71
    iput p2, p0, Landroid/bluetooth/DeviceGroup;->mSize:I

    .line 72
    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    iput-object p4, p0, Landroid/bluetooth/DeviceGroup;->mIncludingSrvcUUID:Landroid/os/ParcelUuid;

    .line 74
    iput-boolean p5, p0, Landroid/bluetooth/DeviceGroup;->mExclusiveAccessSupport:Z

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupId:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/DeviceGroup;->mSize:I

    .line 80
    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 81
    const-class v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/bluetooth/DeviceGroup;->mIncludingSrvcUUID:Landroid/os/ParcelUuid;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/DeviceGroup;->mExclusiveAccessSupport:Z

    .line 83
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceGroupId()I
    .locals 1

    .line 91
    iget v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupId:I

    return v0
.end method

.method public blacklist getDeviceGroupMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public blacklist getDeviceGroupSize()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/bluetooth/DeviceGroup;->mSize:I

    return v0
.end method

.method public blacklist getIncludingServiceUUID()Landroid/os/ParcelUuid;
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mIncludingSrvcUUID:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public blacklist getTotalDiscoveredGroupDevices()I
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist isExclusiveAccessSupported()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Landroid/bluetooth/DeviceGroup;->mExclusiveAccessSupport:Z

    return v0
.end method

.method public blacklist isGroupDiscoveredCompleted()Z
    .locals 2

    .line 150
    iget v0, p0, Landroid/bluetooth/DeviceGroup;->mSize:I

    invoke-virtual {p0}, Landroid/bluetooth/DeviceGroup;->getTotalDiscoveredGroupDevices()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 155
    iget v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/bluetooth/DeviceGroup;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mGroupDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Landroid/bluetooth/DeviceGroup;->mIncludingSrvcUUID:Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 159
    iget-boolean v0, p0, Landroid/bluetooth/DeviceGroup;->mExclusiveAccessSupport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    return-void
.end method
