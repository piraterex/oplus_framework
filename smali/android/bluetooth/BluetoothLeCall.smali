.class public final Landroid/bluetooth/BluetoothLeCall;
.super Ljava/lang/Object;
.source "BluetoothLeCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeCall$State;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_OUTGOING_CALL:I = 0x1

.field public static final blacklist FLAG_WITHHELD_BY_NETWORK:I = 0x4

.field public static final blacklist FLAG_WITHHELD_BY_SERVER:I = 0x2

.field public static final blacklist STATE_ACTIVE:I = 0x3

.field public static final blacklist STATE_ALERTING:I = 0x2

.field public static final blacklist STATE_DIALING:I = 0x1

.field public static final blacklist STATE_INCOMING:I = 0x0

.field public static final blacklist STATE_LOCALLY_AND_REMOTELY_HELD:I = 0x6

.field public static final blacklist STATE_LOCALLY_HELD:I = 0x4

.field public static final blacklist STATE_REMOTELY_HELD:I = 0x5


# instance fields
.field private blacklist mCallFlags:I

.field private blacklist mFriendlyName:Ljava/lang/String;

.field private blacklist mState:I

.field private blacklist mUri:Ljava/lang/String;

.field private blacklist mUuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 204
    new-instance v0, Landroid/bluetooth/BluetoothLeCall$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeCall$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothLeCall;)V
    .locals 5
    .param p1, "that"    # Landroid/bluetooth/BluetoothLeCall;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeCall;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    .line 143
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeCall;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    .line 144
    iget-object v0, p1, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    .line 146
    iget v0, p1, Landroid/bluetooth/BluetoothLeCall;->mState:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    .line 147
    iget v0, p1, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    .line 148
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    .line 221
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothLeCall-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "friendlyName"    # Ljava/lang/String;
    .param p4, "state"    # I
    .param p5, "callFlags"    # I

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    .line 154
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    .line 156
    iput p4, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    .line 157
    iput p5, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    .line 158
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 162
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 163
    return v0

    .line 164
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/BluetoothLeCall;

    .line 167
    .local v2, "that":Landroid/bluetooth/BluetoothLeCall;
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    iget-object v4, v2, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    iget-object v4, v2, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    iget-object v4, v2, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    iget v4, v2, Landroid/bluetooth/BluetoothLeCall;->mState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    iget v4, v2, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 167
    :goto_0
    return v0

    .line 165
    .end local v2    # "that":Landroid/bluetooth/BluetoothLeCall;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getCallFlags()I
    .locals 1

    .line 273
    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    return v0
.end method

.method public blacklist getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getState()I
    .locals 1

    .line 263
    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    return v0
.end method

.method public blacklist getUri()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUuid()Ljava/util/UUID;
    .locals 1

    .line 233
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 174
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isIncomingCall()Z
    .locals 2

    .line 283
    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 197
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 198
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void
.end method
