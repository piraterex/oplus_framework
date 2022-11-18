.class public Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;
.super Ljava/lang/Object;
.source "DeviceEventResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceEventResult"


# instance fields
.field private blacklist mEventStateType:I

.field private blacklist mEventType:I

.field private blacklist mExtraData:Landroid/os/Bundle;

.field private blacklist mPid:I

.field private blacklist mPkgName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult$1;

    invoke-direct {v0}, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult$1;-><init>()V

    sput-object v0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "eventStateType"    # I
    .param p3, "pid"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mEventType:I

    .line 38
    iput p2, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mEventStateType:I

    .line 39
    iput p3, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPid:I

    .line 40
    iput-object p4, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPkgName:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mExtraData:Landroid/os/Bundle;

    .line 42
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mEventType:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mEventStateType:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPid:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPkgName:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mExtraData:Landroid/os/Bundle;

    .line 98
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEventStateType()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mEventStateType:I

    return v0
.end method

.method public whitelist getEventType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mEventType:I

    return v0
.end method

.method public whitelist getExtraData()Landroid/os/Bundle;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mExtraData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "DeviceEventResult"

    const-string v1, "This event is not supported."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mExtraData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getPid()I
    .locals 2

    .line 53
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 54
    const-string v0, "DeviceEventResult"

    const-string v1, "This event is not supported."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPid:I

    return v0
.end method

.method public whitelist getPkgName()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPkgName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "DeviceEventResult"

    const-string v1, "This event is not supported."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceEventResult :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "\teventType is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "\teventStateType is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mEventStateType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "\tpid is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "\t\tpackageName is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mExtraData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "\tExtraData is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 119
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mEventStateType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method
