.class public final enum Landroid/audio/policy/configuration/V7_0/AudioGainMode;
.super Ljava/lang/Enum;
.source "AudioGainMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/audio/policy/configuration/V7_0/AudioGainMode;

.field public static final enum blacklist AUDIO_GAIN_MODE_CHANNELS:Landroid/audio/policy/configuration/V7_0/AudioGainMode;

.field public static final enum blacklist AUDIO_GAIN_MODE_JOINT:Landroid/audio/policy/configuration/V7_0/AudioGainMode;

.field public static final enum blacklist AUDIO_GAIN_MODE_RAMP:Landroid/audio/policy/configuration/V7_0/AudioGainMode;


# instance fields
.field private final blacklist rawName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    const-string v1, "AUDIO_GAIN_MODE_JOINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->AUDIO_GAIN_MODE_JOINT:Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    .line 5
    new-instance v1, Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    const-string v3, "AUDIO_GAIN_MODE_CHANNELS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->AUDIO_GAIN_MODE_CHANNELS:Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    .line 6
    new-instance v3, Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    const-string v5, "AUDIO_GAIN_MODE_RAMP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->AUDIO_GAIN_MODE_RAMP:Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    .line 3
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioGainMode;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->rawName:Ljava/lang/String;

    .line 12
    return-void
.end method

.method static blacklist fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioGainMode;
    .locals 5
    .param p0, "rawString"    # Ljava/lang/String;

    .line 19
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->values()[Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 20
    .local v3, "_f":Landroid/audio/policy/configuration/V7_0/AudioGainMode;
    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21
    return-object v3

    .line 19
    .end local v3    # "_f":Landroid/audio/policy/configuration/V7_0/AudioGainMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioGainMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    return-object v0
.end method

.method public static blacklist values()[Landroid/audio/policy/configuration/V7_0/AudioGainMode;
    .locals 1

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/AudioGainMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    return-object v0
.end method


# virtual methods
.method public blacklist getRawName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->rawName:Ljava/lang/String;

    return-object v0
.end method
