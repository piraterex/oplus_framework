.class public Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;
.super Ljava/lang/Object;
.source "TriggerEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_ELAPSED_TIME:Ljava/lang/String; = "elapsed_real_time"

.field public static final whitelist EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final whitelist EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final whitelist GAME_SCENE_ID:Ljava/lang/String; = "scene_id"

.field public static final whitelist INPUT_ACTIVITY_PAUSED:I = 0x1e

.field public static final whitelist INPUT_ACTIVITY_RESUMED:I = 0xb

.field public static final whitelist INPUT_CAMERA_START:I = 0x12

.field public static final whitelist INPUT_CAMERA_STOP:I = 0x13

.field public static final whitelist INPUT_FILE_DOWNLOAD_START:I = 0x1f

.field public static final whitelist INPUT_FILE_DOWNLOAD_STOP:I = 0x20

.field public static final whitelist INPUT_GAME_SCENE:I = 0x25

.field public static final whitelist INPUT_GPS_EXTRA_HASH:Ljava/lang/String; = "location_receiver_hash"

.field public static final whitelist INPUT_GPS_OFF:I = 0xf

.field public static final whitelist INPUT_GPS_ON:I = 0xe

.field public static final whitelist INPUT_LOCATION_REQUEST_OFF:I = 0xd

.field public static final whitelist INPUT_LOCATION_REQUEST_ON:I = 0xc

.field public static final whitelist INPUT_NOTIFY_POSTED:I = 0x1c

.field public static final whitelist INPUT_NOTIFY_REMOVED:I = 0x1d

.field public static final whitelist INPUT_PROCESS_DIED:I = 0x16

.field public static final whitelist INPUT_PROCESS_FRONT:I = 0x15

.field public static final whitelist INPUT_SENSOR_START:I = 0x10

.field public static final whitelist INPUT_SENSOR_STOP:I = 0x11

.field public static final whitelist INPUT_VIDEO_START:I = 0x1a

.field public static final whitelist INPUT_VIDEO_STOP:I = 0x1b

.field public static final whitelist INPUT_WAKELOCK_ACQUIRED:I = 0x18

.field public static final whitelist INPUT_WAKELOCK_RELEASED:I = 0x19


# instance fields
.field private blacklist mEventId:I

.field private blacklist mExtraData:Landroid/os/Bundle;

.field private blacklist mPid:I

.field private blacklist mPkgName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent$1;

    invoke-direct {v0}, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent$1;-><init>()V

    sput-object v0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "eventId"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mEventId:I

    .line 71
    iput p2, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mPid:I

    .line 72
    iput-object p3, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mPkgName:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mExtraData:Landroid/os/Bundle;

    .line 74
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mEventId:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mPid:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mPkgName:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mExtraData:Landroid/os/Bundle;

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEventId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mEventId:I

    return v0
.end method

.method public whitelist getExtraData()Landroid/os/Bundle;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mExtraData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getPid()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mPid:I

    return v0
.end method

.method public whitelist getPkgName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setExtraData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extraData"    # Landroid/os/Bundle;

    .line 93
    iput-object p1, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mExtraData:Landroid/os/Bundle;

    .line 94
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TriggerEvent :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "\teventId is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mEventId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "\tpid is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "\t\tpackageName is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mExtraData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "\tExtraData is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 139
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mEventId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method
