.class public Lcom/oplus/ota/OplusSystemUpdateInfo;
.super Ljava/lang/Object;
.source "OplusSystemUpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/ota/OplusSystemUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_NO_UPDATE:I = 0x0

.field public static final whitelist TYPE_OTA_UPDATE:I = 0x1

.field public static final whitelist TYPE_RECOVERY_UPDATE:I = 0x3

.field public static final whitelist TYPE_SAU_UPDATE:I = 0x2


# instance fields
.field private blacklist mFailedMsg:Ljava/lang/String;

.field private blacklist mFailedType:I

.field private blacklist mUpdateSucc:Z

.field private blacklist mUpdateType:I

.field private blacklist mUpdated:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 207
    new-instance v0, Lcom/oplus/ota/OplusSystemUpdateInfo$1;

    invoke-direct {v0}, Lcom/oplus/ota/OplusSystemUpdateInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/ota/OplusSystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    .line 41
    iput v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateType:I

    .line 43
    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateSucc:Z

    .line 45
    iput v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedType:I

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedMsg:Ljava/lang/String;

    .line 53
    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    .line 54
    iput v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateType:I

    .line 55
    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateSucc:Z

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(IZILjava/lang/String;)V
    .locals 1
    .param p1, "updateType"    # I
    .param p2, "updateSucc"    # Z
    .param p3, "failedType"    # I
    .param p4, "failedMsg"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    .line 41
    iput v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateType:I

    .line 43
    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateSucc:Z

    .line 45
    iput v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedType:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedMsg:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    .line 78
    iput p1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateType:I

    .line 79
    iput-boolean p2, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateSucc:Z

    .line 80
    iput p3, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedType:I

    .line 81
    iput-object p4, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedMsg:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    .line 41
    iput v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateType:I

    .line 43
    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateSucc:Z

    .line 45
    iput v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedType:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedMsg:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateType:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateSucc:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedType:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedMsg:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFailedMsg()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedMsg:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFailedType()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedType:I

    return v0
.end method

.method public whitelist getUpdateType()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateType:I

    return v0
.end method

.method public whitelist isUpdateSucc()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateSucc:Z

    return v0
.end method

.method public whitelist isUpdated()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    return v0
.end method

.method public whitelist setFailedMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFailedMsg"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedMsg:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public whitelist setFailedType(I)V
    .locals 0
    .param p1, "mFailedType"    # I

    .line 165
    iput p1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedType:I

    .line 166
    return-void
.end method

.method public whitelist setUpdateSucc(Z)V
    .locals 1
    .param p1, "updateSucc"    # Z

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    .line 161
    iput-boolean p1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateSucc:Z

    .line 162
    return-void
.end method

.method public whitelist setUpdateType(I)V
    .locals 1
    .param p1, "updateType"    # I

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    .line 156
    iput p1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateType:I

    .line 157
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusSystemUpdateInfo{ updated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updateType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updateSucc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateSucc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failedType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failedMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 200
    iget-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    iget v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-boolean v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mUpdateSucc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    iget v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfo;->mFailedMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    return-void
.end method
