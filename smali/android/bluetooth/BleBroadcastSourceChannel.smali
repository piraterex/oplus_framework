.class public final Landroid/bluetooth/BleBroadcastSourceChannel;
.super Ljava/lang/Object;
.source "BleBroadcastSourceChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "BleBroadcastSourceChannel"


# instance fields
.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mIndex:I

.field private blacklist mMetadata:[B

.field private blacklist mStatus:Z

.field private blacklist mSubGroupId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceChannel;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Landroid/bluetooth/BleBroadcastSourceChannel$1;

    invoke-direct {v0}, Landroid/bluetooth/BleBroadcastSourceChannel$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BleBroadcastSourceChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ZI[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "st"    # Z
    .param p4, "aSubGroupId"    # I
    .param p5, "aMetadata"    # [B

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    .line 93
    iput-object p2, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    .line 94
    iput-boolean p3, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    .line 95
    iput p4, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mSubGroupId:I

    .line 96
    if-eqz p5, :cond_0

    array-length v0, p5

    if-eqz v0, :cond_0

    .line 97
    array-length v0, p5

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mMetadata:[B

    .line 98
    array-length v1, p5

    const/4 v2, 0x0

    invoke-static {p5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    :cond_0
    return-void
.end method

.method private static blacklist log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 244
    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 103
    instance-of v0, p1, Landroid/bluetooth/BleBroadcastSourceChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BleBroadcastSourceChannel;

    .line 105
    .local v0, "other":Landroid/bluetooth/BleBroadcastSourceChannel;
    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    iget-boolean v3, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 110
    .end local v0    # "other":Landroid/bluetooth/BleBroadcastSourceChannel;
    :cond_1
    return v1
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIndex()I
    .locals 1

    .line 135
    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    return v0
.end method

.method public blacklist getMetadata()[B
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mMetadata:[B

    return-object v0
.end method

.method public blacklist getStatus()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    return v0
.end method

.method public blacklist getSubGroupId()I
    .locals 1

    .line 182
    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mSubGroupId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 194
    iput-boolean p1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    .line 195
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 230
    const-string v0, "BleBroadcastSourceChannel"

    const-string/jumbo v1, "writeToParcel>"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceChannel;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-boolean v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 234
    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mSubGroupId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mMetadata:[B

    if-eqz v1, :cond_0

    .line 236
    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mMetadata:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 239
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeToParcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceChannel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceChannel;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method
