.class public final enum Landroid/audio/policy/configuration/V7_0/AudioUsage;
.super Ljava/lang/Enum;
.source "AudioUsage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

.field public static final enum blacklist AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;


# instance fields
.field private final blacklist rawName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 21

    .line 4
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v1, "AUDIO_USAGE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 5
    new-instance v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v3, "AUDIO_USAGE_MEDIA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 6
    new-instance v3, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v5, "AUDIO_USAGE_VOICE_COMMUNICATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 7
    new-instance v5, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v7, "AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 8
    new-instance v7, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v9, "AUDIO_USAGE_ALARM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 9
    new-instance v9, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v11, "AUDIO_USAGE_NOTIFICATION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 10
    new-instance v11, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v13, "AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 11
    new-instance v13, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v15, "AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 12
    new-instance v15, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v14, "AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 13
    new-instance v14, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v12, "AUDIO_USAGE_ASSISTANCE_SONIFICATION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 14
    new-instance v12, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v10, "AUDIO_USAGE_GAME"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 15
    new-instance v10, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v8, "AUDIO_USAGE_VIRTUAL_SOURCE"

    const/16 v6, 0xb

    const-string v4, "AUDIO_USAGE_VIRTUAL_SOURCE"

    invoke-direct {v10, v8, v6, v4}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 16
    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v6, "AUDIO_USAGE_ASSISTANT"

    const/16 v8, 0xc

    const-string v2, "AUDIO_USAGE_ASSISTANT"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 17
    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v6, "AUDIO_USAGE_CALL_ASSISTANT"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "AUDIO_USAGE_CALL_ASSISTANT"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 18
    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v6, "AUDIO_USAGE_EMERGENCY"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "AUDIO_USAGE_EMERGENCY"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 19
    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v6, "AUDIO_USAGE_SAFETY"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const-string v4, "AUDIO_USAGE_SAFETY"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 20
    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v6, "AUDIO_USAGE_VEHICLE_STATUS"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const-string v2, "AUDIO_USAGE_VEHICLE_STATUS"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 21
    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const-string v6, "AUDIO_USAGE_ANNOUNCEMENT"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const-string v4, "AUDIO_USAGE_ANNOUNCEMENT"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioUsage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    .line 3
    const/16 v4, 0x12

    new-array v4, v4, [Landroid/audio/policy/configuration/V7_0/AudioUsage;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v2, v4, v0

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioUsage;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioUsage;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->rawName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static blacklist fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioUsage;
    .locals 5
    .param p0, "rawString"    # Ljava/lang/String;

    .line 34
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->values()[Landroid/audio/policy/configuration/V7_0/AudioUsage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 35
    .local v3, "_f":Landroid/audio/policy/configuration/V7_0/AudioUsage;
    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    return-object v3

    .line 34
    .end local v3    # "_f":Landroid/audio/policy/configuration/V7_0/AudioUsage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioUsage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;

    return-object v0
.end method

.method public static blacklist values()[Landroid/audio/policy/configuration/V7_0/AudioUsage;
    .locals 1

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/AudioUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/AudioUsage;

    return-object v0
.end method


# virtual methods
.method public blacklist getRawName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->rawName:Ljava/lang/String;

    return-object v0
.end method
