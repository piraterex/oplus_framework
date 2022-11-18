.class public final Landroid/hardware/location/NanoAppMessage;
.super Ljava/lang/Object;
.source "NanoAppMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG_LOG_NUM_BYTES:I = 0x10


# instance fields
.field private greylist-max-o mIsBroadcasted:Z

.field private greylist-max-o mMessageBody:[B

.field private greylist-max-o mMessageType:I

.field private greylist-max-o mNanoAppId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Landroid/hardware/location/NanoAppMessage$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(JI[BZ)V
    .locals 0
    .param p1, "nanoAppId"    # J
    .param p3, "messageType"    # I
    .param p4, "messageBody"    # [B
    .param p5, "broadcasted"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    .line 46
    iput p3, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    .line 47
    iput-object p4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    .line 48
    iput-boolean p5, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    .line 49
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, "msgSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppMessage-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;
    .locals 7
    .param p0, "sourceNanoAppId"    # J
    .param p2, "messageType"    # I
    .param p3, "messageBody"    # [B
    .param p4, "broadcasted"    # Z

    .line 84
    new-instance v6, Landroid/hardware/location/NanoAppMessage;

    move-object v0, v6

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/NanoAppMessage;-><init>(JI[BZ)V

    return-object v6
.end method

.method public static whitelist createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;
    .locals 7
    .param p0, "targetNanoAppId"    # J
    .param p2, "messageType"    # I
    .param p3, "messageBody"    # [B

    .line 65
    new-instance v6, Landroid/hardware/location/NanoAppMessage;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/NanoAppMessage;-><init>(JI[BZ)V

    return-object v6
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 182
    return v0

    .line 185
    :cond_0
    const/4 v1, 0x0

    .line 186
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/location/NanoAppMessage;

    if-eqz v2, :cond_2

    .line 187
    move-object v2, p1

    check-cast v2, Landroid/hardware/location/NanoAppMessage;

    .line 188
    .local v2, "other":Landroid/hardware/location/NanoAppMessage;
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 189
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    if-ne v3, v4, :cond_1

    .line 190
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    if-ne v3, v4, :cond_1

    .line 191
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 194
    .end local v2    # "other":Landroid/hardware/location/NanoAppMessage;
    :cond_2
    return v1
.end method

.method public whitelist getMessageBody()[B
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    return-object v0
.end method

.method public whitelist getMessageType()I
    .locals 1

    .line 98
    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    return v0
.end method

.method public whitelist getNanoAppId()J
    .locals 2

    .line 91
    iget-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    return-wide v0
.end method

.method public whitelist isBroadcastMessage()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 156
    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v0, v0

    .line 158
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NanoAppMessage[type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    iget-boolean v2, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    if-eqz v2, :cond_0

    const-string v2, "broadcast"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "unicast"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nanoapp = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "ret":Ljava/lang/String;
    if-lez v0, :cond_1

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    aget-byte v4, v4, v2

    const/4 v5, 0x1

    invoke-static {v4, v5}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_2

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    .end local v2    # "i":I
    :cond_3
    if-le v0, v3, :cond_4

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 138
    return-void
.end method
