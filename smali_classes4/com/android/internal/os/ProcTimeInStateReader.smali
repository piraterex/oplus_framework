.class public Lcom/android/internal/os/ProcTimeInStateReader;
.super Ljava/lang/Object;
.source "ProcTimeInStateReader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProcTimeInStateReader"

.field private static final blacklist TIME_IN_STATE_HEADER_LINE_FORMAT:[I

.field private static final blacklist TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

.field private static final blacklist TIME_IN_STATE_LINE_TIME_FORMAT:[I


# instance fields
.field private blacklist mFrequenciesKhz:[J

.field private blacklist mTimeInStateTimeFormat:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 66
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

    .line 74
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_TIME_FORMAT:[I

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    return-void

    :array_0
    .array-data 4
        0x2020
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x200a
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/nio/file/Path;)V
    .locals 0
    .param p1, "initialTimeInStateFile"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/os/ProcTimeInStateReader;->initializeTimeInStateFormat(Ljava/nio/file/Path;)V

    .line 107
    return-void
.end method

.method private blacklist initializeTimeInStateFormat(Ljava/nio/file/Path;)V
    .locals 12
    .param p1, "timeInStatePath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v7

    .line 165
    .local v7, "timeInStateBytes":[B
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v8, v0

    .line 166
    .local v8, "timeInStateFrequencyFormat":Landroid/util/IntArray;
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v9, v0

    .line 167
    .local v9, "timeInStateTimeFormat":Landroid/util/IntArray;
    const/4 v0, 0x0

    .line 168
    .local v0, "numFrequencies":I
    const/4 v1, 0x0

    move v10, v0

    .end local v0    # "numFrequencies":I
    .local v1, "i":I
    .local v10, "numFrequencies":I
    :goto_0
    array-length v0, v7

    if-ge v1, v0, :cond_2

    .line 170
    aget-byte v0, v7, v1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    invoke-virtual {v8, v0}, Landroid/util/IntArray;->addAll([I)V

    .line 172
    invoke-virtual {v9, v0}, Landroid/util/IntArray;->addAll([I)V

    goto :goto_1

    .line 174
    :cond_0
    sget-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

    invoke-virtual {v8, v0}, Landroid/util/IntArray;->addAll([I)V

    .line 175
    sget-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_TIME_FORMAT:[I

    invoke-virtual {v9, v0}, Landroid/util/IntArray;->addAll([I)V

    .line 176
    add-int/lit8 v10, v10, 0x1

    .line 179
    :goto_1
    array-length v0, v7

    if-ge v1, v0, :cond_1

    aget-byte v0, v7, v1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_2
    if-eqz v10, :cond_4

    .line 190
    new-array v11, v10, [J

    .line 191
    .local v11, "readLongs":[J
    const/4 v1, 0x0

    array-length v2, v7

    .line 193
    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 191
    move-object v0, v7

    move-object v5, v11

    invoke-static/range {v0 .. v6}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    .line 194
    .local v0, "readSuccess":Z
    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v9}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mTimeInStateTimeFormat:[I

    .line 199
    iput-object v11, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    .line 200
    return-void

    .line 195
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse time_in_state file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    .end local v0    # "readSuccess":Z
    .end local v11    # "readLongs":[J
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Empty time_in_state file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getFrequenciesKhz()[J
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    return-object v0
.end method

.method public blacklist getUsageTimesMillis(Ljava/nio/file/Path;)[J
    .locals 7
    .param p1, "timeInStatePath"    # Ljava/nio/file/Path;

    .line 119
    iget-object v0, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    array-length v0, v0

    new-array v0, v0, [J

    .line 120
    .local v0, "readLongs":[J
    nop

    .line 121
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mTimeInStateTimeFormat:[I

    .line 120
    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    .line 124
    .local v1, "readSuccess":Z
    if-nez v1, :cond_0

    .line 125
    return-object v3

    .line 128
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 129
    aget-wide v3, v0, v2

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method
