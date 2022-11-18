.class public final Landroid/media/audio/common/AudioPortExt;
.super Ljava/lang/Object;
.source "AudioPortExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioPortExt$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioPortExt;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist device:I = 0x1

.field public static final blacklist mix:I = 0x2

.field public static final blacklist session:I = 0x3

.field public static final blacklist unspecified:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Landroid/media/audio/common/AudioPortExt$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPortExt$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioPortExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    .line 28
    iput-object p2, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioPortExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioPortExt-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPortExt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 206
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 209
    return-void

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPortExt;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioPortExt;->_tagString(I)Ljava/lang/String;

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

    .line 222
    iput p1, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    .line 223
    iput-object p2, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    .line 224
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 212
    packed-switch p1, :pswitch_data_0

    .line 218
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

    .line 216
    :pswitch_0
    const-string v0, "session"

    return-object v0

    .line 215
    :pswitch_1
    const-string v0, "mix"

    return-object v0

    .line 214
    :pswitch_2
    const-string v0, "device"

    return-object v0

    .line 213
    :pswitch_3
    const-string/jumbo v0, "unspecified"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 172
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 173
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 174
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 176
    :cond_1
    return v0
.end method

.method public static blacklist device(Landroid/media/audio/common/AudioPortDeviceExt;)Landroid/media/audio/common/AudioPortExt;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioPortDeviceExt;

    .line 53
    new-instance v0, Landroid/media/audio/common/AudioPortExt;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPortExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mix(Landroid/media/audio/common/AudioPortMixExt;)Landroid/media/audio/common/AudioPortExt;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioPortMixExt;

    .line 68
    new-instance v0, Landroid/media/audio/common/AudioPortExt;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPortExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist session(I)Landroid/media/audio/common/AudioPortExt;
    .locals 3
    .param p0, "_value"    # I

    .line 83
    new-instance v0, Landroid/media/audio/common/AudioPortExt;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioPortExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist unspecified(Z)Landroid/media/audio/common/AudioPortExt;
    .locals 3
    .param p0, "_value"    # Z

    .line 38
    new-instance v0, Landroid/media/audio/common/AudioPortExt;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioPortExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getMix()Landroid/media/audio/common/AudioPortMixExt;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPortExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getDevice()Landroid/media/audio/common/AudioPortDeviceExt;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPortExt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 164
    nop

    .line 169
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 191
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 192
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 193
    :cond_1
    instance-of v2, p1, Landroid/media/audio/common/AudioPortExt;

    if-nez v2, :cond_2

    return v1

    .line 194
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioPortExt;

    .line 195
    .local v2, "that":Landroid/media/audio/common/AudioPortExt;
    iget v3, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    iget v4, v2, Landroid/media/audio/common/AudioPortExt;->_tag:I

    if-eq v3, v4, :cond_3

    return v1

    .line 196
    :cond_3
    iget-object v3, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 197
    :cond_4
    return v0
.end method

.method public blacklist getDevice()Landroid/media/audio/common/AudioPortDeviceExt;
    .locals 1

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortExt;->_assertTag(I)V

    .line 58
    iget-object v0, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioPortDeviceExt;

    return-object v0
.end method

.method public blacklist getMix()Landroid/media/audio/common/AudioPortMixExt;
    .locals 1

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortExt;->_assertTag(I)V

    .line 73
    iget-object v0, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioPortMixExt;

    return-object v0
.end method

.method public blacklist getSession()I
    .locals 1

    .line 87
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortExt;->_assertTag(I)V

    .line 88
    iget-object v0, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 32
    iget v0, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    return v0
.end method

.method public blacklist getUnspecified()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortExt;->_assertTag(I)V

    .line 43
    iget-object v0, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPortExt;->_value:Ljava/lang/Object;

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

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 155
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

    .line 151
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 153
    return-void

    .line 146
    .end local v1    # "_aidl_value":I
    :pswitch_1
    sget-object v1, Landroid/media/audio/common/AudioPortMixExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioPortMixExt;

    .line 147
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioPortMixExt;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 148
    return-void

    .line 141
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioPortMixExt;
    :pswitch_2
    sget-object v1, Landroid/media/audio/common/AudioPortDeviceExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioPortDeviceExt;

    .line 142
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioPortDeviceExt;
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 143
    return-void

    .line 136
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioPortDeviceExt;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 137
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 138
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setDevice(Landroid/media/audio/common/AudioPortDeviceExt;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioPortDeviceExt;

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public blacklist setMix(Landroid/media/audio/common/AudioPortMixExt;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioPortMixExt;

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method public blacklist setSession(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method public blacklist setUnspecified(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioPortExt;->_set(ILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 181
    iget v0, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioPortExt.session("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getSession()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioPortExt.mix("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getMix()Landroid/media/audio/common/AudioPortMixExt;

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

    .line 183
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioPortExt.device("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getDevice()Landroid/media/audio/common/AudioPortDeviceExt;

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

    .line 182
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioPortExt.unspecified("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getUnspecified()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 113
    iget v0, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Landroid/media/audio/common/AudioPortExt;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getSession()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getMix()Landroid/media/audio/common/AudioPortMixExt;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 123
    goto :goto_0

    .line 119
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getDevice()Landroid/media/audio/common/AudioPortDeviceExt;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 120
    goto :goto_0

    .line 116
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortExt;->getUnspecified()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    nop

    .line 128
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
