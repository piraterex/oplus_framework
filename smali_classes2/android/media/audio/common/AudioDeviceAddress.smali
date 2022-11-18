.class public final Landroid/media/audio/common/AudioDeviceAddress;
.super Ljava/lang/Object;
.source "AudioDeviceAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioDeviceAddress$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioDeviceAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist alsa:I = 0x4

.field public static final blacklist id:I = 0x0

.field public static final blacklist ipv4:I = 0x2

.field public static final blacklist ipv6:I = 0x3

.field public static final blacklist mac:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioDeviceAddress$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioDeviceAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "_value":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    .line 20
    iput-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    .line 29
    iput-object p2, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioDeviceAddress-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 218
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 221
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioDeviceAddress;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 235
    iput p1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    .line 236
    iput-object p2, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    .line 237
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 224
    packed-switch p1, :pswitch_data_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :pswitch_0
    const-string v0, "alsa"

    return-object v0

    .line 228
    :pswitch_1
    const-string v0, "ipv6"

    return-object v0

    .line 227
    :pswitch_2
    const-string v0, "ipv4"

    return-object v0

    .line 226
    :pswitch_3
    const-string v0, "mac"

    return-object v0

    .line 225
    :pswitch_4
    const-string v0, "id"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist alsa([I)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2
    .param p0, "_value"    # [I

    .line 99
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist id(Ljava/lang/String;)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ipv4([B)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2
    .param p0, "_value"    # [B

    .line 69
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ipv6([I)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2
    .param p0, "_value"    # [I

    .line 84
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mac([B)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2
    .param p0, "_value"    # [B

    .line 54
    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getTag()I

    .line 187
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 204
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 205
    :cond_1
    instance-of v2, p1, Landroid/media/audio/common/AudioDeviceAddress;

    if-nez v2, :cond_2

    return v1

    .line 206
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioDeviceAddress;

    .line 207
    .local v2, "that":Landroid/media/audio/common/AudioDeviceAddress;
    iget v3, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    iget v4, v2, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    if-eq v3, v4, :cond_3

    return v1

    .line 208
    :cond_3
    iget-object v3, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 209
    :cond_4
    return v0
.end method

.method public blacklist getAlsa()[I
    .locals 1

    .line 103
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    .line 104
    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    .line 44
    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIpv4()[B
    .locals 1

    .line 73
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    .line 74
    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getIpv6()[I
    .locals 1

    .line 88
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    .line 89
    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getMac()[B
    .locals 1

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    .line 59
    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 33
    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 176
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 177
    return-void

    .line 170
    .end local v1    # "_aidl_value":[I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 171
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 172
    return-void

    .line 165
    .end local v1    # "_aidl_value":[I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 166
    .local v1, "_aidl_value":[B
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 167
    return-void

    .line 160
    .end local v1    # "_aidl_value":[B
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 161
    .restart local v1    # "_aidl_value":[B
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 162
    return-void

    .line 155
    .end local v1    # "_aidl_value":[B
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 157
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setAlsa([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public blacklist setIpv4([B)V
    .locals 1
    .param p1, "_value"    # [B

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public blacklist setIpv6([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public blacklist setMac([B)V
    .locals 1
    .param p1, "_value"    # [B

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 192
    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioDeviceAddress.alsa("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getAlsa()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioDeviceAddress.ipv6("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv6()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioDeviceAddress.ipv4("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv4()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioDeviceAddress.mac("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getMac()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioDeviceAddress.id("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 129
    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getAlsa()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv6()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 142
    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv4()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 139
    goto :goto_0

    .line 135
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getMac()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    goto :goto_0

    .line 132
    :pswitch_4
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    nop

    .line 147
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
