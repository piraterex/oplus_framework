.class public final Landroid/media/audio/common/AudioPortMixExtUseCase;
.super Ljava/lang/Object;
.source "AudioPortMixExtUseCase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioPortMixExtUseCase$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioPortMixExtUseCase;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist source:I = 0x2

.field public static final blacklist stream:I = 0x1

.field public static final blacklist unspecified:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/media/audio/common/AudioPortMixExtUseCase$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPortMixExtUseCase$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioPortMixExtUseCase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    .line 27
    iput-object p2, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioPortMixExtUseCase;->readFromParcel(Landroid/os/Parcel;)V

    .line 23
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioPortMixExtUseCase-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPortMixExtUseCase;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 168
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 171
    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tagString(I)Ljava/lang/String;

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

    .line 183
    iput p1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    .line 184
    iput-object p2, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    .line 185
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 179
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

    .line 177
    :pswitch_0
    const-string v0, "source"

    return-object v0

    .line 176
    :pswitch_1
    const-string v0, "stream"

    return-object v0

    .line 175
    :pswitch_2
    const-string/jumbo v0, "unspecified"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist source(I)Landroid/media/audio/common/AudioPortMixExtUseCase;
    .locals 3
    .param p0, "_value"    # I

    .line 67
    new-instance v0, Landroid/media/audio/common/AudioPortMixExtUseCase;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioPortMixExtUseCase;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist stream(I)Landroid/media/audio/common/AudioPortMixExtUseCase;
    .locals 3
    .param p0, "_value"    # I

    .line 52
    new-instance v0, Landroid/media/audio/common/AudioPortMixExtUseCase;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioPortMixExtUseCase;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist unspecified(Z)Landroid/media/audio/common/AudioPortMixExtUseCase;
    .locals 3
    .param p0, "_value"    # Z

    .line 37
    new-instance v0, Landroid/media/audio/common/AudioPortMixExtUseCase;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioPortMixExtUseCase;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getTag()I

    .line 139
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 153
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 154
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 155
    :cond_1
    instance-of v2, p1, Landroid/media/audio/common/AudioPortMixExtUseCase;

    if-nez v2, :cond_2

    return v1

    .line 156
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioPortMixExtUseCase;

    .line 157
    .local v2, "that":Landroid/media/audio/common/AudioPortMixExtUseCase;
    iget v3, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    iget v4, v2, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    if-eq v3, v4, :cond_3

    return v1

    .line 158
    :cond_3
    iget-object v3, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 159
    :cond_4
    return v0
.end method

.method public blacklist getSource()I
    .locals 1

    .line 71
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_assertTag(I)V

    .line 72
    iget-object v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStream()I
    .locals 1

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_assertTag(I)V

    .line 57
    iget-object v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 31
    iget v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    return v0
.end method

.method public blacklist getUnspecified()Z
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_assertTag(I)V

    .line 42
    iget-object v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_value:Ljava/lang/Object;

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

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 131
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

    .line 127
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 129
    return-void

    .line 122
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 124
    return-void

    .line 117
    .end local v1    # "_aidl_value":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 118
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 119
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setSource(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public blacklist setStream(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 62
    return-void
.end method

.method public blacklist setUnspecified(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->_set(ILjava/lang/Object;)V

    .line 47
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 144
    iget v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioPortMixExtUseCase.source("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioPortMixExtUseCase.stream("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getStream()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioPortMixExtUseCase.unspecified("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getUnspecified()Z

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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 97
    iget v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/media/audio/common/AudioPortMixExtUseCase;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getSource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getStream()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    goto :goto_0

    .line 100
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPortMixExtUseCase;->getUnspecified()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 101
    nop

    .line 109
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
