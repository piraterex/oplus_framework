.class public final Lcom/android/internal/app/procstats/UidState;
.super Ljava/lang/Object;
.source "UidState.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private blacklist mCurCombinedState:I

.field private final blacklist mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private blacklist mProcesses:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartTime:J

.field private final blacklist mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private blacklist mTotalRunningDuration:J

.field private blacklist mTotalRunningStartTime:J

.field private final blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;I)V
    .locals 2
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "uid"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    .line 51
    iput-object p1, p0, Lcom/android/internal/app/procstats/UidState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 52
    iput p2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    .line 53
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 54
    return-void
.end method

.method private blacklist calcCombinedState()I
    .locals 7

    .line 88
    const/4 v0, -0x1

    .line 89
    .local v0, "minCombined":I
    const/4 v1, -0x1

    .line 90
    .local v1, "min":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 91
    iget-object v4, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v4

    .line 92
    .local v4, "combinedState":I
    rem-int/lit8 v5, v4, 0x10

    .line 93
    .local v5, "state":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 94
    if-eq v1, v6, :cond_0

    if-ge v5, v1, :cond_1

    .line 95
    :cond_0
    move v0, v4

    .line 96
    move v1, v5

    .line 90
    .end local v4    # "combinedState":I
    .end local v5    # "state":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    return v0
.end method

.method private blacklist setCombinedStateInner(IJ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 109
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-eq v0, p1, :cond_2

    .line 110
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->commitStateTime(J)V

    .line 112
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 114
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    goto :goto_0

    .line 115
    :cond_0
    iget v3, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v3, v2, :cond_1

    .line 118
    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 121
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    .line 123
    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/UidState;)V
    .locals 4
    .param p1, "other"    # Lcom/android/internal/app/procstats/UidState;

    .line 185
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 186
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 187
    return-void
.end method

.method blacklist addProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 1
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 190
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method blacklist addProcess(Lcom/android/internal/app/procstats/ProcessState;J)V
    .locals 1
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "now"    # J

    .line 194
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    .line 196
    return-void
.end method

.method public blacklist clone()Lcom/android/internal/app/procstats/UidState;
    .locals 3

    .line 60
    new-instance v0, Lcom/android/internal/app/procstats/UidState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 61
    .local v0, "unew":Lcom/android/internal/app/procstats/UidState;
    iget-object v1, v0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 62
    iget v1, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    iput v1, v0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    .line 63
    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    .line 64
    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    .line 65
    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 66
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/UidState;->clone()Lcom/android/internal/app/procstats/UidState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist commitStateTime(J)V
    .locals 7
    .param p1, "now"    # J

    .line 136
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 137
    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v1, p1, v1

    .line 138
    .local v1, "dur":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 141
    :cond_0
    iget-wide v3, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v5, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v5, p1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 142
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    .line 144
    .end local v1    # "dur":J
    :cond_1
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    .line 145
    return-void
.end method

.method blacklist dumpState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-wide/16 v5, 0x0

    .line 268
    .local v5, "totalTime":J
    const/4 v7, -0x1

    .line 269
    .local v7, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_0
    array-length v9, v2

    const-string v11, ": "

    if-ge v8, v9, :cond_8

    .line 270
    const/4 v9, -0x1

    .line 271
    .local v9, "printedMem":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "im":I
    :goto_1
    array-length v10, v3

    if-ge v14, v10, :cond_7

    .line 272
    const/4 v10, 0x0

    .local v10, "ip":I
    :goto_2
    array-length v15, v4

    if-ge v10, v15, :cond_6

    .line 273
    aget v15, v2, v8

    .line 274
    .local v15, "iscreen":I
    aget v12, v3, v14

    .line 275
    .local v12, "imem":I
    add-int v13, v15, v12

    mul-int/lit8 v13, v13, 0x10

    aget v19, v4, v10

    add-int v13, v13, v19

    .line 276
    .local v13, "bucket":I
    move/from16 v19, v8

    .end local v8    # "is":I
    .local v19, "is":I
    iget-object v8, v0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move/from16 v20, v14

    .end local v14    # "im":I
    .local v20, "im":I
    int-to-byte v14, v13

    invoke-virtual {v8, v14}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v21

    .line 277
    .local v21, "time":J
    const-string v8, ""

    .line 278
    .local v8, "running":Ljava/lang/String;
    iget v14, v0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v14, v13, :cond_0

    .line 279
    const-string v8, " (running)"

    .line 280
    move/from16 v23, v13

    .end local v13    # "bucket":I
    .local v23, "bucket":I
    iget-wide v13, v0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v13, p6, v13

    add-long v21, v21, v13

    move-wide/from16 v13, v21

    goto :goto_3

    .line 278
    .end local v23    # "bucket":I
    .restart local v13    # "bucket":I
    :cond_0
    move/from16 v23, v13

    .end local v13    # "bucket":I
    .restart local v23    # "bucket":I
    move-wide/from16 v13, v21

    .line 282
    .end local v21    # "time":J
    .local v13, "time":J
    :goto_3
    const-wide/16 v17, 0x0

    cmp-long v21, v13, v17

    if-eqz v21, :cond_5

    .line 283
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    array-length v0, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 285
    if-eq v7, v15, :cond_1

    .line 286
    move v0, v15

    goto :goto_4

    :cond_1
    const/4 v0, -0x1

    .line 285
    :goto_4
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 287
    move v7, v15

    .line 289
    :cond_2
    array-length v0, v3

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 290
    nop

    .line 291
    if-eq v9, v12, :cond_3

    move v0, v12

    goto :goto_5

    :cond_3
    const/4 v0, -0x1

    .line 290
    :goto_5
    const/16 v2, 0x2f

    invoke-static {v1, v0, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 292
    move v0, v12

    move v9, v0

    .line 294
    :cond_4
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v2, v4, v10

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    invoke-static {v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    add-long/2addr v5, v13

    .line 272
    .end local v8    # "running":Ljava/lang/String;
    .end local v12    # "imem":I
    .end local v13    # "time":J
    .end local v15    # "iscreen":I
    .end local v23    # "bucket":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v8, v19

    move/from16 v14, v20

    goto :goto_2

    .end local v19    # "is":I
    .end local v20    # "im":I
    .local v8, "is":I
    .restart local v14    # "im":I
    :cond_6
    move/from16 v19, v8

    move/from16 v20, v14

    .line 271
    .end local v8    # "is":I
    .end local v10    # "ip":I
    .end local v14    # "im":I
    .restart local v19    # "is":I
    .restart local v20    # "im":I
    add-int/lit8 v14, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .end local v20    # "im":I
    .restart local v14    # "im":I
    goto/16 :goto_1

    .end local v19    # "is":I
    .restart local v8    # "is":I
    :cond_7
    move/from16 v19, v8

    move/from16 v20, v14

    .line 269
    .end local v8    # "is":I
    .end local v9    # "printedMem":I
    .end local v14    # "im":I
    .restart local v19    # "is":I
    add-int/lit8 v8, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .end local v19    # "is":I
    .restart local v8    # "is":I
    goto/16 :goto_0

    :cond_8
    move/from16 v19, v8

    .line 301
    .end local v8    # "is":I
    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_b

    .line 302
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v8, 0x1

    if-le v2, v8, :cond_9

    .line 304
    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_6

    .line 303
    :cond_9
    const/4 v2, -0x1

    .line 306
    :goto_6
    array-length v9, v3

    if-le v9, v8, :cond_a

    .line 307
    const/16 v8, 0x2f

    invoke-static {v1, v2, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 309
    :cond_a
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    .line 301
    :cond_b
    move-object/from16 v0, p3

    .line 314
    :goto_7
    return-void
.end method

.method public blacklist getAggregatedDurationsInStates()[J
    .locals 10

    .line 234
    const/16 v0, 0x10

    new-array v0, v0, [J

    .line 235
    .local v0, "states":[J
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/UidState;->getDurationsBucketCount()I

    move-result v1

    .line 236
    .local v1, "numOfBuckets":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 237
    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v3

    .line 238
    .local v3, "key":I
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 239
    .local v4, "combinedState":I
    rem-int/lit8 v5, v4, 0x10

    aget-wide v6, v0, v5

    iget-object v8, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v0, v5

    .line 236
    .end local v3    # "key":I
    .end local v4    # "combinedState":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public blacklist getCombinedState()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    return v0
.end method

.method public blacklist getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 222
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    .line 223
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v2, p1, :cond_0

    .line 224
    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 226
    :cond_0
    return-wide v0
.end method

.method public blacklist getDurationsBucketCount()I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalRunningDuration(J)J
    .locals 7
    .param p1, "now"    # J

    .line 214
    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 215
    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v4, p1, v2

    :cond_0
    add-long/2addr v0, v4

    .line 214
    return-wide v0
.end method

.method public blacklist hasPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .line 173
    .local v2, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    const/4 v3, 0x1

    return v3

    .line 171
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInUse()Z
    .locals 3

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x1

    return v2

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)Z
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 250
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method blacklist removeProcess(Lcom/android/internal/app/procstats/ProcessState;J)V
    .locals 1
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "now"    # J

    .line 199
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    .line 201
    return-void
.end method

.method public blacklist resetSafely(J)V
    .locals 1
    .param p1, "now"    # J

    .line 151
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 152
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    .line 153
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 260
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UidState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateCombinedState(IJ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 74
    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-eq v0, p1, :cond_0

    .line 75
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    .line 77
    :cond_0
    return-void
.end method

.method public blacklist updateCombinedState(J)V
    .locals 1
    .param p1, "now"    # J

    .line 84
    invoke-direct {p0}, Lcom/android/internal/app/procstats/UidState;->calcCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    .line 85
    return-void
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 246
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->getTotalRunningDuration(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    return-void
.end method
