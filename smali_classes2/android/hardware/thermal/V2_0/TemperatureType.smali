.class public final Landroid/hardware/thermal/V2_0/TemperatureType;
.super Ljava/lang/Object;
.source "TemperatureType.java"


# static fields
.field public static final blacklist BATTERY:I = 0x2

.field public static final blacklist BCL_CURRENT:I = 0x7

.field public static final blacklist BCL_PERCENTAGE:I = 0x8

.field public static final blacklist BCL_VOLTAGE:I = 0x6

.field public static final blacklist CPU:I = 0x0

.field public static final blacklist GPU:I = 0x1

.field public static final blacklist NPU:I = 0x9

.field public static final blacklist POWER_AMPLIFIER:I = 0x5

.field public static final blacklist SKIN:I = 0x3

.field public static final blacklist UNKNOWN:I = -0x1

.field public static final blacklist USB_PORT:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 62
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 63
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    or-int/lit8 v1, v1, -0x1

    .line 66
    :cond_0
    const-string v2, "CPU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 68
    const-string v2, "GPU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    or-int/lit8 v1, v1, 0x1

    .line 71
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 72
    const-string v2, "BATTERY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    or-int/lit8 v1, v1, 0x2

    .line 75
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 76
    const-string v2, "SKIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    or-int/lit8 v1, v1, 0x3

    .line 79
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 80
    const-string v2, "USB_PORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    or-int/lit8 v1, v1, 0x4

    .line 83
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 84
    const-string v2, "POWER_AMPLIFIER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    or-int/lit8 v1, v1, 0x5

    .line 87
    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 88
    const-string v2, "BCL_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    or-int/lit8 v1, v1, 0x6

    .line 91
    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 92
    const-string v2, "BCL_CURRENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    or-int/lit8 v1, v1, 0x7

    .line 95
    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 96
    const-string v2, "BCL_PERCENTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit8 v1, v1, 0x8

    .line 99
    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 100
    const-string v2, "NPU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    or-int/lit8 v1, v1, 0x9

    .line 103
    :cond_9
    if-eq p0, v1, :cond_a

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_a
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 23
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 24
    const-string v0, "UNKNOWN"

    return-object v0

    .line 26
    :cond_0
    if-nez p0, :cond_1

    .line 27
    const-string v0, "CPU"

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 30
    const-string v0, "GPU"

    return-object v0

    .line 32
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 33
    const-string v0, "BATTERY"

    return-object v0

    .line 35
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 36
    const-string v0, "SKIN"

    return-object v0

    .line 38
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    .line 39
    const-string v0, "USB_PORT"

    return-object v0

    .line 41
    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_6

    .line 42
    const-string v0, "POWER_AMPLIFIER"

    return-object v0

    .line 44
    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    .line 45
    const-string v0, "BCL_VOLTAGE"

    return-object v0

    .line 47
    :cond_7
    const/4 v0, 0x7

    if-ne p0, v0, :cond_8

    .line 48
    const-string v0, "BCL_CURRENT"

    return-object v0

    .line 50
    :cond_8
    const/16 v0, 0x8

    if-ne p0, v0, :cond_9

    .line 51
    const-string v0, "BCL_PERCENTAGE"

    return-object v0

    .line 53
    :cond_9
    const/16 v0, 0x9

    if-ne p0, v0, :cond_a

    .line 54
    const-string v0, "NPU"

    return-object v0

    .line 56
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
