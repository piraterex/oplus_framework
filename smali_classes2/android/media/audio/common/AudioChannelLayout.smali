.class public final Landroid/media/audio/common/AudioChannelLayout;
.super Ljava/lang/Object;
.source "AudioChannelLayout.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioChannelLayout$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CHANNEL_BACK_CENTER:I = 0x100

.field public static final blacklist CHANNEL_BACK_LEFT:I = 0x10

.field public static final blacklist CHANNEL_BACK_RIGHT:I = 0x20

.field public static final blacklist CHANNEL_BOTTOM_FRONT_CENTER:I = 0x200000

.field public static final blacklist CHANNEL_BOTTOM_FRONT_LEFT:I = 0x100000

.field public static final blacklist CHANNEL_BOTTOM_FRONT_RIGHT:I = 0x400000

.field public static final blacklist CHANNEL_FRONT_CENTER:I = 0x4

.field public static final blacklist CHANNEL_FRONT_LEFT:I = 0x1

.field public static final blacklist CHANNEL_FRONT_LEFT_OF_CENTER:I = 0x40

.field public static final blacklist CHANNEL_FRONT_RIGHT:I = 0x2

.field public static final blacklist CHANNEL_FRONT_RIGHT_OF_CENTER:I = 0x80

.field public static final blacklist CHANNEL_FRONT_WIDE_LEFT:I = 0x1000000

.field public static final blacklist CHANNEL_FRONT_WIDE_RIGHT:I = 0x2000000

.field public static final blacklist CHANNEL_HAPTIC_A:I = 0x40000000

.field public static final blacklist CHANNEL_HAPTIC_B:I = 0x20000000

.field public static final blacklist CHANNEL_LOW_FREQUENCY:I = 0x8

.field public static final blacklist CHANNEL_LOW_FREQUENCY_2:I = 0x800000

.field public static final blacklist CHANNEL_SIDE_LEFT:I = 0x200

.field public static final blacklist CHANNEL_SIDE_RIGHT:I = 0x400

.field public static final blacklist CHANNEL_TOP_BACK_CENTER:I = 0x10000

.field public static final blacklist CHANNEL_TOP_BACK_LEFT:I = 0x8000

.field public static final blacklist CHANNEL_TOP_BACK_RIGHT:I = 0x20000

.field public static final blacklist CHANNEL_TOP_CENTER:I = 0x800

.field public static final blacklist CHANNEL_TOP_FRONT_CENTER:I = 0x2000

.field public static final blacklist CHANNEL_TOP_FRONT_LEFT:I = 0x1000

.field public static final blacklist CHANNEL_TOP_FRONT_RIGHT:I = 0x4000

.field public static final blacklist CHANNEL_TOP_SIDE_LEFT:I = 0x40000

.field public static final blacklist CHANNEL_TOP_SIDE_RIGHT:I = 0x80000

.field public static final blacklist CHANNEL_VOICE_DNLINK:I = 0x8000

.field public static final blacklist CHANNEL_VOICE_UPLINK:I = 0x4000

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioChannelLayout;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INDEX_MASK_1:I = 0x1

.field public static final blacklist INDEX_MASK_10:I = 0x3ff

.field public static final blacklist INDEX_MASK_11:I = 0x7ff

.field public static final blacklist INDEX_MASK_12:I = 0xfff

.field public static final blacklist INDEX_MASK_13:I = 0x1fff

.field public static final blacklist INDEX_MASK_14:I = 0x3fff

.field public static final blacklist INDEX_MASK_15:I = 0x7fff

.field public static final blacklist INDEX_MASK_16:I = 0xffff

.field public static final blacklist INDEX_MASK_17:I = 0x1ffff

.field public static final blacklist INDEX_MASK_18:I = 0x3ffff

.field public static final blacklist INDEX_MASK_19:I = 0x7ffff

.field public static final blacklist INDEX_MASK_2:I = 0x3

.field public static final blacklist INDEX_MASK_20:I = 0xfffff

.field public static final blacklist INDEX_MASK_21:I = 0x1fffff

.field public static final blacklist INDEX_MASK_22:I = 0x3fffff

.field public static final blacklist INDEX_MASK_23:I = 0x7fffff

.field public static final blacklist INDEX_MASK_24:I = 0xffffff

.field public static final blacklist INDEX_MASK_3:I = 0x7

.field public static final blacklist INDEX_MASK_4:I = 0xf

.field public static final blacklist INDEX_MASK_5:I = 0x1f

.field public static final blacklist INDEX_MASK_6:I = 0x3f

.field public static final blacklist INDEX_MASK_7:I = 0x7f

.field public static final blacklist INDEX_MASK_8:I = 0xff

.field public static final blacklist INDEX_MASK_9:I = 0x1ff

.field public static final blacklist INTERLEAVE_LEFT:I = 0x0

.field public static final blacklist INTERLEAVE_RIGHT:I = 0x1

.field public static final blacklist LAYOUT_13POINT_360RA:I = 0x72f607

.field public static final blacklist LAYOUT_22POINT2:I = 0xffffff

.field public static final blacklist LAYOUT_2POINT0POINT2:I = 0xc0003

.field public static final blacklist LAYOUT_2POINT1:I = 0xb

.field public static final blacklist LAYOUT_2POINT1POINT2:I = 0xc000b

.field public static final blacklist LAYOUT_3POINT0POINT2:I = 0xc0007

.field public static final blacklist LAYOUT_3POINT1:I = 0xf

.field public static final blacklist LAYOUT_3POINT1POINT2:I = 0xc000f

.field public static final blacklist LAYOUT_5POINT1:I = 0x3f

.field public static final blacklist LAYOUT_5POINT1POINT2:I = 0xc003f

.field public static final blacklist LAYOUT_5POINT1POINT4:I = 0x2d03f

.field public static final blacklist LAYOUT_5POINT1_SIDE:I = 0x60f

.field public static final blacklist LAYOUT_6POINT1:I = 0x13f

.field public static final blacklist LAYOUT_7POINT1:I = 0x63f

.field public static final blacklist LAYOUT_7POINT1POINT2:I = 0xc063f

.field public static final blacklist LAYOUT_7POINT1POINT4:I = 0x2d63f

.field public static final blacklist LAYOUT_9POINT1POINT4:I = 0x302d63f

.field public static final blacklist LAYOUT_9POINT1POINT6:I = 0x30ed63f

.field public static final blacklist LAYOUT_FRONT_BACK:I = 0x104

.field public static final blacklist LAYOUT_HAPTIC_AB:I = 0x60000000

.field public static final blacklist LAYOUT_MONO:I = 0x1

.field public static final blacklist LAYOUT_MONO_HAPTIC_A:I = 0x40000001

.field public static final blacklist LAYOUT_MONO_HAPTIC_AB:I = 0x60000001

.field public static final blacklist LAYOUT_PENTA:I = 0x37

.field public static final blacklist LAYOUT_QUAD:I = 0x33

.field public static final blacklist LAYOUT_QUAD_SIDE:I = 0x603

.field public static final blacklist LAYOUT_STEREO:I = 0x3

.field public static final blacklist LAYOUT_STEREO_HAPTIC_A:I = 0x40000003

.field public static final blacklist LAYOUT_STEREO_HAPTIC_AB:I = 0x60000003

.field public static final blacklist LAYOUT_SURROUND:I = 0x107

.field public static final blacklist LAYOUT_TRI:I = 0x7

.field public static final blacklist LAYOUT_TRI_BACK:I = 0x103

.field public static final blacklist VOICE_CALL_MONO:I = 0xc000

.field public static final blacklist VOICE_DNLINK_MONO:I = 0x8000

.field public static final blacklist VOICE_UPLINK_MONO:I = 0x4000

.field public static final blacklist indexMask:I = 0x2

.field public static final blacklist invalid:I = 0x1

.field public static final blacklist layoutMask:I = 0x3

.field public static final blacklist none:I = 0x0

.field public static final blacklist voiceMask:I = 0x4


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioChannelLayout$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

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
    iput p1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    .line 29
    iput-object p2, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioChannelLayout;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioChannelLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 309
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 312
    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioChannelLayout;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_tagString(I)Ljava/lang/String;

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

    .line 326
    iput p1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    .line 327
    iput-object p2, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    .line 328
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 315
    packed-switch p1, :pswitch_data_0

    .line 322
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

    .line 320
    :pswitch_0
    const-string/jumbo v0, "voiceMask"

    return-object v0

    .line 319
    :pswitch_1
    const-string v0, "layoutMask"

    return-object v0

    .line 318
    :pswitch_2
    const-string v0, "indexMask"

    return-object v0

    .line 317
    :pswitch_3
    const-string v0, "invalid"

    return-object v0

    .line 316
    :pswitch_4
    const-string v0, "none"

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

.method public static blacklist indexMask(I)Landroid/media/audio/common/AudioChannelLayout;
    .locals 3
    .param p0, "_value"    # I

    .line 69
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist invalid(I)Landroid/media/audio/common/AudioChannelLayout;
    .locals 3
    .param p0, "_value"    # I

    .line 54
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist layoutMask(I)Landroid/media/audio/common/AudioChannelLayout;
    .locals 3
    .param p0, "_value"    # I

    .line 84
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist none(I)Landroid/media/audio/common/AudioChannelLayout;
    .locals 3
    .param p0, "_value"    # I

    .line 39
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist voiceMask(I)Landroid/media/audio/common/AudioChannelLayout;
    .locals 3
    .param p0, "_value"    # I

    .line 99
    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    .line 278
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 294
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 295
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 296
    :cond_1
    instance-of v2, p1, Landroid/media/audio/common/AudioChannelLayout;

    if-nez v2, :cond_2

    return v1

    .line 297
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioChannelLayout;

    .line 298
    .local v2, "that":Landroid/media/audio/common/AudioChannelLayout;
    iget v3, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    iget v4, v2, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    if-eq v3, v4, :cond_3

    return v1

    .line 299
    :cond_3
    iget-object v3, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 300
    :cond_4
    return v0
.end method

.method public blacklist getIndexMask()I
    .locals 1

    .line 73
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    .line 74
    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInvalid()I
    .locals 1

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    .line 59
    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getLayoutMask()I
    .locals 1

    .line 88
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    .line 89
    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getNone()I
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    .line 44
    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
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
    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    return v0
.end method

.method public blacklist getVoiceMask()I
    .locals 1

    .line 103
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    .line 104
    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 305
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 177
    return-void

    .line 170
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 172
    return-void

    .line 165
    .end local v1    # "_aidl_value":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 167
    return-void

    .line 160
    .end local v1    # "_aidl_value":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 162
    return-void

    .line 155
    .end local v1    # "_aidl_value":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

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

.method public blacklist setIndexMask(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public blacklist setInvalid(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public blacklist setLayoutMask(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public blacklist setNone(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public blacklist setVoiceMask(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 283
    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioChannelLayout.voiceMask("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getVoiceMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioChannelLayout.layoutMask("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioChannelLayout.indexMask("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getIndexMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioChannelLayout.invalid("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getInvalid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioChannelLayout.none("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getNone()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getVoiceMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getIndexMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    goto :goto_0

    .line 135
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getInvalid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    goto :goto_0

    .line 132
    :pswitch_4
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getNone()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

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
