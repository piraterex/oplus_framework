.class public final Landroid/os/VibrationAttributes;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationAttributes$Builder;,
        Landroid/os/VibrationAttributes$Flag;,
        Landroid/os/VibrationAttributes$Usage;,
        Landroid/os/VibrationAttributes$UsageClass;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_ALL_SUPPORTED:I = 0x3

.field public static final whitelist FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x1

.field public static final blacklist FLAG_BYPASS_USER_VIBRATION_INTENSITY_OFF:I = 0x2

.field public static final blacklist FLAG_INVALIDATE_SETTINGS_CACHE:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "VibrationAttributes"

.field public static final whitelist USAGE_ACCESSIBILITY:I = 0x42

.field public static final whitelist USAGE_ALARM:I = 0x11

.field public static final whitelist USAGE_CLASS_ALARM:I = 0x1

.field public static final whitelist USAGE_CLASS_FEEDBACK:I = 0x2

.field public static final whitelist USAGE_CLASS_MASK:I = 0xf

.field public static final whitelist USAGE_CLASS_MEDIA:I = 0x3

.field public static final whitelist USAGE_CLASS_UNKNOWN:I = 0x0

.field public static final whitelist USAGE_COMMUNICATION_REQUEST:I = 0x41

.field public static final blacklist USAGE_FILTER_MATCH_ALL:I = -0x1

.field public static final whitelist USAGE_HARDWARE_FEEDBACK:I = 0x32

.field public static final whitelist USAGE_MEDIA:I = 0x13

.field public static final whitelist USAGE_NOTIFICATION:I = 0x31

.field public static final whitelist USAGE_PHYSICAL_EMULATION:I = 0x22

.field public static final whitelist USAGE_RINGTONE:I = 0x21

.field public static final whitelist USAGE_TOUCH:I = 0x12

.field public static final whitelist USAGE_UNKNOWN:I


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mOriginalAudioUsage:I

.field private final blacklist mUsage:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/os/VibrationAttributes;)I
    .locals 0

    iget p0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalAudioUsage(Landroid/os/VibrationAttributes;)I
    .locals 0

    iget p0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/os/VibrationAttributes;)I
    .locals 0

    iget p0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 293
    new-instance v0, Landroid/os/VibrationAttributes$1;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$1;-><init>()V

    sput-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(III)V
    .locals 1
    .param p1, "usage"    # I
    .param p2, "audioUsage"    # I
    .param p3, "flags"    # I

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    .line 204
    iput p2, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 205
    and-int/lit8 v0, p3, 0x3

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    .line 206
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/os/VibrationAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/os/VibrationAttributes;-><init>(III)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    .line 290
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/VibrationAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createForUsage(I)Landroid/os/VibrationAttributes;
    .locals 1
    .param p0, "usage"    # I

    .line 194
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist usageToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "usage"    # I

    .line 335
    sparse-switch p0, :sswitch_data_0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :sswitch_0
    const-string v0, "ACCESSIBILITY"

    return-object v0

    .line 347
    :sswitch_1
    const-string v0, "COMMUNICATION_REQUEST"

    return-object v0

    .line 355
    :sswitch_2
    const-string v0, "HARDWARE_FEEDBACK"

    return-object v0

    .line 345
    :sswitch_3
    const-string v0, "NOTIFICATION"

    return-object v0

    .line 353
    :sswitch_4
    const-string v0, "PHYSICAL_EMULATION"

    return-object v0

    .line 343
    :sswitch_5
    const-string v0, "RINGTONE"

    return-object v0

    .line 349
    :sswitch_6
    const-string v0, "MEDIA"

    return-object v0

    .line 351
    :sswitch_7
    const-string v0, "TOUCH"

    return-object v0

    .line 339
    :sswitch_8
    const-string v0, "ALARM"

    return-object v0

    .line 337
    :sswitch_9
    const-string v0, "UNKNOWN"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x11 -> :sswitch_8
        0x12 -> :sswitch_7
        0x13 -> :sswitch_6
        0x21 -> :sswitch_5
        0x22 -> :sswitch_4
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x41 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 304
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 305
    return v0

    .line 307
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 310
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/VibrationAttributes;

    .line 311
    .local v2, "rhs":Landroid/os/VibrationAttributes;
    iget v3, p0, Landroid/os/VibrationAttributes;->mUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mUsage:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/os/VibrationAttributes;->mFlags:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mFlags:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 308
    .end local v2    # "rhs":Landroid/os/VibrationAttributes;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAudioUsage()I
    .locals 1

    .line 249
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-eqz v0, :cond_0

    .line 251
    return v0

    .line 254
    :cond_0
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    sparse-switch v0, :sswitch_data_0

    .line 270
    const/4 v0, 0x0

    return v0

    .line 266
    :sswitch_0
    const/16 v0, 0xb

    return v0

    .line 258
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 256
    :sswitch_2
    const/4 v0, 0x5

    return v0

    .line 260
    :sswitch_3
    const/4 v0, 0x6

    return v0

    .line 268
    :sswitch_4
    const/4 v0, 0x1

    return v0

    .line 262
    :sswitch_5
    const/16 v0, 0xd

    return v0

    .line 264
    :sswitch_6
    const/4 v0, 0x4

    return v0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_6
        0x12 -> :sswitch_5
        0x13 -> :sswitch_4
        0x21 -> :sswitch_3
        0x31 -> :sswitch_2
        0x41 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getFlags()I
    .locals 1

    .line 230
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return v0
.end method

.method public whitelist getUsage()I
    .locals 1

    .line 221
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return v0
.end method

.method public whitelist getUsageClass()I
    .locals 1

    .line 213
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 317
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 238
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationAttributes: Usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Audio Usage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 324
    invoke-static {v1}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    return-object v0
.end method

.method public blacklist usageToString()Ljava/lang/String;
    .locals 1

    .line 330
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v0}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 281
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    return-void
.end method
