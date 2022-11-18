.class public final Landroid/telephony/PreciseCallState;
.super Ljava/lang/Object;
.source "PreciseCallState.java"

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
            "Landroid/telephony/PreciseCallState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PRECISE_CALL_STATE_ACTIVE:I = 0x1

.field public static final whitelist PRECISE_CALL_STATE_ALERTING:I = 0x4

.field public static final whitelist PRECISE_CALL_STATE_DIALING:I = 0x3

.field public static final whitelist PRECISE_CALL_STATE_DISCONNECTED:I = 0x7

.field public static final whitelist PRECISE_CALL_STATE_DISCONNECTING:I = 0x8

.field public static final whitelist PRECISE_CALL_STATE_HOLDING:I = 0x2

.field public static final whitelist PRECISE_CALL_STATE_IDLE:I = 0x0

.field public static final whitelist PRECISE_CALL_STATE_INCOMING:I = 0x5

.field public static final whitelist PRECISE_CALL_STATE_NOT_VALID:I = -0x1

.field public static final whitelist PRECISE_CALL_STATE_WAITING:I = 0x6


# instance fields
.field private greylist-max-o mBackgroundCallState:I

.field private greylist-max-o mDisconnectCause:I

.field private greylist-max-o mForegroundCallState:I

.field private greylist-max-o mPreciseDisconnectCause:I

.field private greylist-max-o mRingingCallState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 252
    new-instance v0, Landroid/telephony/PreciseCallState$1;

    invoke-direct {v0}, Landroid/telephony/PreciseCallState$1;-><init>()V

    sput-object v0, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 71
    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 72
    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 73
    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 74
    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 106
    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .locals 1
    .param p1, "ringingCall"    # I
    .param p2, "foregroundCall"    # I
    .param p3, "backgroundCall"    # I
    .param p4, "disconnectCause"    # I
    .param p5, "preciseDisconnectCause"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 71
    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 72
    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 73
    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 74
    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 93
    iput p1, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 94
    iput p2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 95
    iput p3, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 96
    iput p4, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 97
    iput p5, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 98
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 71
    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 72
    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 73
    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 74
    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 119
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/PreciseCallState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PreciseCallState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 272
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 273
    return v0

    .line 275
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 276
    return v1

    .line 278
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 279
    return v1

    .line 281
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/telephony/PreciseCallState;

    .line 282
    .local v2, "other":Landroid/telephony/PreciseCallState;
    iget v3, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    iget v4, v2, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    iget v4, v2, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    iget v4, v2, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    iget v4, v2, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    iget v4, v2, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public whitelist getBackgroundCallState()I
    .locals 1

    .line 139
    iget v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    return v0
.end method

.method public greylist getDisconnectCause()I
    .locals 1

    .line 191
    iget v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    return v0
.end method

.method public whitelist getForegroundCallState()I
    .locals 1

    .line 132
    iget v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    return v0
.end method

.method public greylist getPreciseDisconnectCause()I
    .locals 1

    .line 235
    iget v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    return v0
.end method

.method public whitelist getRingingCallState()I
    .locals 1

    .line 125
    iget v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 266
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 266
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 292
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ringing call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Foreground call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Background call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Disconnect cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Precise disconnect cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 245
    iget v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return-void
.end method
