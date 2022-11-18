.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_PARCEL:Z = false

.field static final blacklist PROCESS_STATE_TO_STATE:[I

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private blacklist mActive:Z

.field private blacklist mAvgCachedKillPss:J

.field private blacklist mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field blacklist mCommonSources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurCombinedState:I

.field private blacklist mDead:Z

.field private final blacklist mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private blacklist mLastPssState:I

.field private blacklist mLastPssTime:J

.field private blacklist mMaxCachedKillPss:J

.field private blacklist mMinCachedKillPss:J

.field private blacklist mMultiPackage:Z

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mNumActiveServices:I

.field private blacklist mNumCachedKill:I

.field private blacklist mNumExcessiveCpu:I

.field private blacklist mNumStartedServices:I

.field private final blacklist mPackage:Ljava/lang/String;

.field private final blacklist mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private blacklist mStartTime:J

.field private final blacklist mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private blacklist mTmpTotalTime:J

.field private blacklist mTotalRunningDuration:J

.field private final blacklist mTotalRunningPss:[J

.field private blacklist mTotalRunningStartTime:J

.field private final blacklist mUid:I

.field private final blacklist mVersion:J

.field public blacklist tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public blacklist tmpNumInUse:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 83
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    .line 106
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x2
        0x4
        0x5
        0x5
        0x6
        0x7
        0x9
        0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xd
        0xf
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 2
    .param p1, "commonProcess"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "now"    # J

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 146
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 196
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 197
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 199
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 200
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 201
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 202
    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 203
    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 204
    if-eq v1, v0, :cond_0

    .line 205
    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 207
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 208
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 209
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "name"    # Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 146
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 179
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 180
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 181
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 182
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 183
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 184
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 185
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 186
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 187
    return-void
.end method

.method private blacklist addCachedKill(IJJJ)V
    .locals 5
    .param p1, "num"    # I
    .param p2, "minPss"    # J
    .param p4, "avgPss"    # J
    .param p6, "maxPss"    # J

    .line 645
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    .line 646
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 647
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 648
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 649
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_0

    .line 651
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    cmp-long v1, p2, v1

    if-gez v1, :cond_1

    .line 652
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 654
    :cond_1
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    cmp-long v1, p6, v1

    if-lez v1, :cond_2

    .line 655
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 657
    :cond_2
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    long-to-double v1, v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    long-to-double v3, p4

    add-double/2addr v1, v3

    add-int v3, v0, p1

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 659
    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 661
    :goto_0
    return-void
.end method

.method private blacklist dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    .line 1108
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-wide/from16 v2, p9

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 1110
    .local v4, "totals":Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    move-object/from16 v8, p0

    move-wide/from16 v9, p7

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 1111
    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v11, v11

    long-to-double v13, v2

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v13

    .line 1113
    .local v11, "percentage":D
    const-wide v13, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v13, v11, v13

    if-gez v13, :cond_1

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v13, p11

    goto :goto_1

    .line 1114
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 1115
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    :cond_2
    if-eqz v1, :cond_3

    .line 1118
    const-string v13, "  "

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1120
    const-string v13, ": "

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    :cond_3
    move/from16 v13, p11

    invoke-virtual {v4, v0, v2, v3, v13}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 1123
    if-eqz p2, :cond_4

    .line 1124
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1127
    :cond_4
    :goto_1
    return-void
.end method

.method public static blacklist dumpPssSamples(Ljava/io/PrintWriter;[JI)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "table"    # [J
    .param p2, "offset"    # I

    .line 1084
    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1085
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1086
    add-int/lit8 v1, p2, 0x2

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1087
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    add-int/lit8 v1, p2, 0x3

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1089
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1091
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1093
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    add-int/lit8 v4, p2, 0x6

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1095
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    add-int/lit8 v1, p2, 0x7

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1097
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    add-int/lit8 v1, p2, 0x8

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1099
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    add-int/lit8 v0, p2, 0x9

    aget-wide v0, p1, v0

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1101
    const-string v0, " over "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    add-int/lit8 v0, p2, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1103
    return-void
.end method

.method public static blacklist dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "table"    # [J
    .param p2, "offset"    # I

    .line 1410
    add-int/lit8 v0, p2, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1411
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1412
    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1413
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1414
    add-int/lit8 v1, p2, 0x2

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1415
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1416
    add-int/lit8 v1, p2, 0x3

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1417
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1418
    add-int/lit8 v1, p2, 0x4

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1419
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1420
    add-int/lit8 v1, p2, 0x5

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1421
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1422
    add-int/lit8 v1, p2, 0x6

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1423
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1424
    add-int/lit8 v1, p2, 0x7

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1425
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1426
    add-int/lit8 v1, p2, 0x8

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1427
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1428
    add-int/lit8 v0, p2, 0x9

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1429
    return-void
.end method

.method private blacklist ensureNotDead()V
    .locals 2

    .line 323
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessState dead: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " common.name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method private blacklist pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    .line 702
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 703
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 704
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v1, :cond_0

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulling dead proc: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " common.name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessStats"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .line 714
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_4

    .line 718
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 720
    .local v2, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const-string v3, " for multi-proc "

    const-string v4, "No existing package "

    const-string v5, "/"

    if-eqz v2, :cond_3

    .line 725
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 726
    .local v6, "expkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v6, :cond_2

    .line 731
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 732
    .local v3, "savedName":Ljava/lang/String;
    iget-object v4, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 733
    if-eqz v1, :cond_1

    .line 737
    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    goto/16 :goto_0

    .line 734
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Didn\'t create per-package process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 727
    .end local v3    # "savedName":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 728
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 721
    .end local v6    # "expkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 722
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 739
    .end local v2    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_4
    :goto_0
    return-object v1
.end method

.method static blacklist writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "sharedUid"    # Z

    .line 1527
    if-eqz p5, :cond_0

    .line 1529
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1530
    return-void

    .line 1532
    :cond_0
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1534
    return-void

    .line 1536
    :cond_1
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1537
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 1538
    .local v0, "pkgLength":I
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_2

    .line 1540
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1541
    return-void

    .line 1545
    .end local v0    # "pkgLength":I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1546
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 9
    .param p1, "other"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 268
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    .line 274
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 275
    iget v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_0

    .line 276
    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 279
    :cond_0
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 283
    :cond_1
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 284
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 285
    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 286
    .local v2, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 287
    .local v3, "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-nez v3, :cond_2

    .line 288
    new-instance v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    move-object v3, v4

    .line 289
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_2
    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->add(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    .line 284
    .end local v2    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v3    # "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public blacklist addPss(JJJZIJLandroid/util/ArrayMap;)V
    .locals 28
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "rss"    # J
    .param p7, "always"    # Z
    .param p8, "type"    # I
    .param p9, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 577
    .local p11, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 578
    const-wide/16 v2, 0x1

    packed-switch p8, :pswitch_data_0

    goto :goto_0

    .line 596
    :pswitch_0
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 597
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    goto :goto_0

    .line 592
    :pswitch_1
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 593
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 594
    goto :goto_0

    .line 588
    :pswitch_2
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 589
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 590
    goto :goto_0

    .line 584
    :pswitch_3
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 585
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 586
    goto :goto_0

    .line 580
    :pswitch_4
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 581
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long v3, v3, p9

    iput-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 582
    nop

    .line 600
    :goto_0
    if-nez p7, :cond_0

    .line 601
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 603
    return-void

    .line 606
    :cond_0
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 608
    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v2, -0x1

    if-eq v5, v2, :cond_2

    .line 610
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v2, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x1

    move-wide/from16 v7, p1

    move-wide/from16 v9, p1

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move-wide/from16 v15, p3

    move-wide/from16 v17, p3

    move-wide/from16 v19, p5

    move-wide/from16 v21, p5

    move-wide/from16 v23, p5

    invoke-virtual/range {v4 .. v24}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 612
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    move-wide/from16 v18, p5

    move-wide/from16 v20, p5

    move-wide/from16 v22, p5

    invoke-static/range {v3 .. v23}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 616
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v2, :cond_1

    .line 617
    return-void

    .line 620
    :cond_1
    if-eqz v1, :cond_2

    .line 621
    invoke-virtual/range {p11 .. p11}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ip":I
    :goto_1
    if-ltz v2, :cond_2

    .line 622
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    .line 623
    .local v3, "fixedProc":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v6, 0x1

    move-wide/from16 v7, p1

    move-wide/from16 v9, p1

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move-wide/from16 v15, p3

    move-wide/from16 v17, p3

    move-wide/from16 v19, p5

    move-wide/from16 v21, p5

    move-wide/from16 v23, p5

    invoke-virtual/range {v4 .. v24}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 625
    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p1

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    move-wide/from16 v18, p3

    move-wide/from16 v20, p3

    move-wide/from16 v22, p5

    move-wide/from16 v24, p5

    move-wide/from16 v26, p5

    invoke-static/range {v7 .. v27}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 621
    .end local v3    # "fixedProc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 630
    .end local v2    # "ip":I
    :cond_2
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

.method public blacklist aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 31
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    .line 814
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v2}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 815
    .local v2, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 816
    .local v3, "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v4}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 817
    .local v4, "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    const/4 v5, 0x0

    .line 818
    .local v5, "havePss":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v7

    const/16 v8, 0x9

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    if-ge v6, v7, :cond_3

    .line 819
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v7, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v7

    .line 820
    .local v7, "key":I
    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v12

    .line 821
    .local v12, "type":I
    rem-int/lit8 v13, v12, 0x10

    .line 822
    .local v13, "procState":I
    invoke-virtual {v0, v12}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v14

    .line 823
    .local v14, "samples":J
    cmp-long v10, v14, v10

    if-lez v10, :cond_2

    .line 824
    invoke-virtual {v0, v12}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v10

    .line 825
    .local v10, "avg":J
    const/4 v5, 0x1

    .line 826
    if-gt v13, v9, :cond_0

    .line 827
    invoke-virtual {v2, v10, v11, v14, v15}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    .line 828
    :cond_0
    if-gt v13, v8, :cond_1

    .line 829
    invoke-virtual {v3, v10, v11, v14, v15}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    .line 831
    :cond_1
    invoke-virtual {v4, v10, v11, v14, v15}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 818
    .end local v7    # "key":I
    .end local v10    # "avg":J
    .end local v12    # "type":I
    .end local v13    # "procState":I
    .end local v14    # "samples":J
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 835
    .end local v6    # "i":I
    :cond_3
    if-nez v5, :cond_4

    .line 836
    return-void

    .line 838
    :cond_4
    const/4 v6, 0x0

    .line 839
    .local v6, "fgHasBg":Z
    const/4 v7, 0x0

    .line 840
    .local v7, "fgHasCached":Z
    const/4 v12, 0x0

    .line 841
    .local v12, "bgHasCached":Z
    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v15, 0x3

    cmp-long v13, v13, v15

    if-gez v13, :cond_5

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v13, v13, v10

    if-lez v13, :cond_5

    .line 842
    const/4 v6, 0x1

    .line 843
    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v13, v14, v8, v9}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 845
    :cond_5
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v15

    if-gez v8, :cond_6

    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 846
    const/4 v7, 0x1

    .line 847
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 849
    :cond_6
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v15

    if-gez v8, :cond_7

    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 850
    const/4 v12, 0x1

    .line 851
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 853
    :cond_7
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v15

    if-gez v8, :cond_8

    if-nez v6, :cond_8

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 854
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 856
    :cond_8
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v15

    if-gez v8, :cond_9

    if-nez v12, :cond_9

    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    .line 857
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 859
    :cond_9
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v15

    if-gez v8, :cond_a

    if-nez v7, :cond_a

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    .line 860
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 862
    :cond_a
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 863
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v9, v8}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v9

    .line 864
    .local v9, "key":I
    invoke-static {v9}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v13

    .line 865
    .local v13, "type":I
    iget-object v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v14, v9}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v14

    .line 866
    .local v14, "time":J
    iget v10, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v10, v13, :cond_b

    .line 867
    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v10, p2, v10

    add-long/2addr v14, v10

    .line 869
    :cond_b
    rem-int/lit8 v10, v13, 0x10

    .line 870
    .local v10, "procState":I
    iget-object v11, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aget-wide v19, v11, v10

    add-long v19, v19, v14

    aput-wide v19, v11, v10

    .line 871
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v19

    .line 873
    .local v19, "samples":J
    const-wide/16 v17, 0x0

    cmp-long v11, v19, v17

    if-lez v11, :cond_c

    .line 874
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v21

    move/from16 v16, v12

    move-wide/from16 v11, v19

    move-wide/from16 v29, v21

    move/from16 v21, v5

    move/from16 v22, v6

    move-wide/from16 v5, v29

    .local v21, "avg":J
    goto :goto_3

    .line 875
    .end local v21    # "avg":J
    :cond_c
    const/4 v11, 0x4

    if-gt v10, v11, :cond_d

    .line 876
    move/from16 v16, v12

    .end local v12    # "bgHasCached":Z
    .local v16, "bgHasCached":Z
    iget-wide v11, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 877
    .end local v19    # "samples":J
    .local v11, "samples":J
    move/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "havePss":Z
    .end local v6    # "fgHasBg":Z
    .local v21, "havePss":Z
    .local v22, "fgHasBg":Z
    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .local v5, "avg":J
    goto :goto_3

    .line 878
    .end local v11    # "samples":J
    .end local v16    # "bgHasCached":Z
    .end local v21    # "havePss":Z
    .end local v22    # "fgHasBg":Z
    .local v5, "havePss":Z
    .restart local v6    # "fgHasBg":Z
    .restart local v12    # "bgHasCached":Z
    .restart local v19    # "samples":J
    :cond_d
    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v16, v12

    .end local v5    # "havePss":Z
    .end local v6    # "fgHasBg":Z
    .end local v12    # "bgHasCached":Z
    .restart local v16    # "bgHasCached":Z
    .restart local v21    # "havePss":Z
    .restart local v22    # "fgHasBg":Z
    const/16 v5, 0x9

    if-gt v10, v5, :cond_e

    .line 879
    iget-wide v11, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 880
    .end local v19    # "samples":J
    .restart local v11    # "samples":J
    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .local v5, "avg":J
    goto :goto_3

    .line 882
    .end local v5    # "avg":J
    .end local v11    # "samples":J
    .restart local v19    # "samples":J
    :cond_e
    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 883
    .end local v19    # "samples":J
    .local v5, "samples":J
    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v29, v5

    move-wide v5, v11

    move-wide/from16 v11, v29

    .line 885
    .local v5, "avg":J
    .restart local v11    # "samples":J
    :goto_3
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v3    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v19, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v20, "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    aget-wide v2, v0, v10

    long-to-double v2, v2

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v0, v0, v10

    move/from16 v23, v7

    move/from16 v24, v8

    .end local v7    # "fgHasCached":Z
    .end local v8    # "i":I
    .local v23, "fgHasCached":Z
    .local v24, "i":I
    int-to-double v7, v0

    mul-double/2addr v2, v7

    long-to-double v7, v5

    move v0, v13

    move-wide/from16 v25, v14

    .end local v13    # "type":I
    .end local v14    # "time":J
    .local v0, "type":I
    .local v25, "time":J
    long-to-double v13, v11

    mul-double/2addr v7, v13

    add-double/2addr v2, v7

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v7, v7, v10

    int-to-long v7, v7

    add-long/2addr v7, v11

    long-to-double v7, v7

    div-double/2addr v2, v7

    .line 889
    .local v2, "newAvg":D
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    double-to-long v13, v2

    aput-wide v13, v7, v10

    .line 890
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v8, v7, v10

    int-to-long v13, v8

    add-long/2addr v13, v11

    long-to-int v8, v13

    aput v8, v7, v10

    .line 891
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v13, v7, v10

    move v8, v0

    .end local v0    # "type":I
    .local v8, "type":I
    long-to-double v0, v5

    move-wide/from16 v27, v2

    move-object v15, v4

    move-wide/from16 v2, v25

    move-wide/from16 v25, v5

    .end local v4    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v5    # "avg":J
    .local v2, "time":J
    .local v15, "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v25, "avg":J
    .local v27, "newAvg":D
    long-to-double v4, v2

    mul-double/2addr v0, v4

    add-double/2addr v13, v0

    aput-wide v13, v7, v10

    .line 862
    .end local v2    # "time":J
    .end local v8    # "type":I
    .end local v9    # "key":I
    .end local v10    # "procState":I
    .end local v11    # "samples":J
    .end local v25    # "avg":J
    .end local v27    # "newAvg":D
    add-int/lit8 v8, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v15

    move/from16 v12, v16

    move-wide/from16 v10, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    .end local v24    # "i":I
    .local v8, "i":I
    goto/16 :goto_2

    .line 893
    .end local v8    # "i":I
    .end local v15    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v16    # "bgHasCached":Z
    .end local v19    # "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v20    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v21    # "havePss":Z
    .end local v22    # "fgHasBg":Z
    .end local v23    # "fgHasCached":Z
    .local v2, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v3    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v4    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v5, "havePss":Z
    .restart local v6    # "fgHasBg":Z
    .restart local v7    # "fgHasCached":Z
    .restart local v12    # "bgHasCached":Z
    :cond_f
    return-void
.end method

.method public blacklist clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .param p1, "now"    # J

    .line 212
    new-instance v9, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    move-object v0, v9

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 213
    .local v0, "pnew":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 214
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 217
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 218
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 219
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 220
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 221
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 222
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iput-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 223
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 224
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 225
    return-object v0
.end method

.method public blacklist commitStateTime(J)V
    .locals 7
    .param p1, "now"    # J

    .line 491
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 492
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v1, p1, v1

    .line 493
    .local v1, "dur":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 494
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 496
    :cond_0
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v5, p1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 497
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 499
    .end local v1    # "dur":J
    :cond_1
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 500
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 501
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_2

    .line 502
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 503
    .local v1, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->commitStateTime(J)V

    .line 501
    .end local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 506
    .end local v0    # "ip":I
    :cond_2
    return-void
.end method

.method public blacklist computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .locals 36
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    .line 1167
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 1168
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 1171
    const/4 v4, 0x0

    .local v4, "is":I
    :goto_0
    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    array-length v5, v5

    if-ge v4, v5, :cond_a

    .line 1172
    const/4 v5, 0x0

    .local v5, "im":I
    :goto_1
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    array-length v6, v6

    if-ge v5, v6, :cond_9

    .line 1173
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_2
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    array-length v7, v7

    if-ge v6, v7, :cond_8

    .line 1174
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    aget v7, v7, v4

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x10

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    aget v8, v8, v6

    add-int/2addr v7, v8

    .line 1176
    .local v7, "bucket":I
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v10, p2

    invoke-virtual {v0, v7, v10, v11}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v12

    add-long/2addr v8, v12

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 1177
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v8

    .line 1178
    .local v8, "samples":J
    cmp-long v12, v8, v2

    if-lez v12, :cond_7

    .line 1179
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v12

    .line 1180
    .local v12, "minPss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v14

    .line 1181
    .local v14, "avgPss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v2

    .line 1182
    .local v2, "maxPss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v10

    .line 1183
    .local v10, "minUss":J
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "is":I
    .end local v5    # "im":I
    .local v18, "is":I
    .local v19, "im":I
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v4

    .line 1184
    .local v4, "avgUss":J
    move-wide/from16 v20, v8

    .end local v8    # "samples":J
    .local v20, "samples":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v8

    .line 1185
    .local v8, "maxUss":J
    move-wide/from16 v22, v8

    .end local v8    # "maxUss":J
    .local v22, "maxUss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v8

    .line 1186
    .local v8, "minRss":J
    move-wide/from16 v24, v8

    .end local v8    # "minRss":J
    .local v24, "minRss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v8

    .line 1187
    .local v8, "avgRss":J
    move-wide/from16 v26, v8

    .end local v8    # "avgRss":J
    .local v26, "avgRss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v8

    .line 1188
    .local v8, "maxRss":J
    move/from16 v28, v6

    move/from16 v29, v7

    .end local v6    # "ip":I
    .end local v7    # "bucket":I
    .local v28, "ip":I
    .local v29, "bucket":I
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v16, 0x0

    cmp-long v6, v6, v16

    if-nez v6, :cond_0

    .line 1189
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1190
    iput-wide v14, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1191
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1192
    iput-wide v10, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1193
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1194
    move-wide/from16 v6, v22

    .end local v22    # "maxUss":J
    .local v6, "maxUss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 1195
    move-wide/from16 v6, v24

    .end local v24    # "minRss":J
    .local v6, "minRss":J
    .restart local v22    # "maxUss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    .line 1196
    move-wide/from16 v6, v26

    .end local v26    # "avgRss":J
    .local v6, "avgRss":J
    .restart local v24    # "minRss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1197
    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-wide/from16 v14, v20

    move-wide/from16 v20, v4

    move-wide/from16 v34, v8

    move-wide/from16 v8, v24

    move-wide/from16 v24, v6

    move-wide/from16 v6, v22

    move-wide/from16 v22, v2

    move-wide/from16 v2, v34

    goto/16 :goto_5

    .line 1199
    .end local v6    # "avgRss":J
    .restart local v26    # "avgRss":J
    :cond_0
    move-wide/from16 v6, v26

    .end local v26    # "avgRss":J
    .restart local v6    # "avgRss":J
    move-wide/from16 v26, v8

    .end local v8    # "maxRss":J
    .local v26, "maxRss":J
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    cmp-long v8, v12, v8

    if-gez v8, :cond_1

    .line 1200
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1202
    :cond_1
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    long-to-double v8, v8

    move-wide/from16 v30, v12

    .end local v12    # "minPss":J
    .local v30, "minPss":J
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v12, v12

    mul-double/2addr v8, v12

    long-to-double v12, v14

    move-wide/from16 v32, v14

    move-wide/from16 v14, v20

    move-wide/from16 v20, v6

    .end local v6    # "avgRss":J
    .local v14, "samples":J
    .local v20, "avgRss":J
    .local v32, "avgPss":J
    long-to-double v6, v14

    mul-double/2addr v12, v6

    add-double/2addr v8, v12

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v6, v14

    long-to-double v6, v6

    div-double/2addr v8, v6

    double-to-long v6, v8

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1204
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 1205
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1207
    :cond_2
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    cmp-long v6, v10, v6

    if-gez v6, :cond_3

    .line 1208
    iput-wide v10, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1210
    :cond_3
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    long-to-double v6, v6

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    long-to-double v8, v4

    long-to-double v12, v14

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v8, v14

    long-to-double v8, v8

    div-double/2addr v6, v8

    double-to-long v6, v6

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1212
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    cmp-long v6, v22, v6

    if-lez v6, :cond_4

    .line 1213
    move-wide/from16 v6, v22

    .end local v22    # "maxUss":J
    .local v6, "maxUss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto :goto_3

    .line 1212
    .end local v6    # "maxUss":J
    .restart local v22    # "maxUss":J
    :cond_4
    move-wide/from16 v6, v22

    .line 1215
    .end local v22    # "maxUss":J
    .restart local v6    # "maxUss":J
    :goto_3
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    cmp-long v8, v24, v8

    if-gez v8, :cond_5

    .line 1216
    move-wide/from16 v8, v24

    .end local v24    # "minRss":J
    .local v8, "minRss":J
    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    goto :goto_4

    .line 1215
    .end local v8    # "minRss":J
    .restart local v24    # "minRss":J
    :cond_5
    move-wide/from16 v8, v24

    .line 1218
    .end local v24    # "minRss":J
    .restart local v8    # "minRss":J
    :goto_4
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    long-to-double v12, v12

    move-wide/from16 v22, v2

    .end local v2    # "maxPss":J
    .local v22, "maxPss":J
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v2, v2

    mul-double/2addr v12, v2

    move-wide/from16 v2, v20

    move-wide/from16 v20, v4

    .end local v4    # "avgUss":J
    .local v2, "avgRss":J
    .local v20, "avgUss":J
    long-to-double v4, v2

    move-wide/from16 v24, v2

    .end local v2    # "avgRss":J
    .local v24, "avgRss":J
    long-to-double v2, v14

    mul-double/2addr v4, v2

    add-double/2addr v12, v4

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v14

    long-to-double v2, v2

    div-double/2addr v12, v2

    double-to-long v2, v12

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1220
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    cmp-long v2, v26, v2

    if-lez v2, :cond_6

    .line 1221
    move-wide/from16 v2, v26

    .end local v26    # "maxRss":J
    .local v2, "maxRss":J
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    goto :goto_5

    .line 1220
    .end local v2    # "maxRss":J
    .restart local v26    # "maxRss":J
    :cond_6
    move-wide/from16 v2, v26

    .line 1224
    .end local v26    # "maxRss":J
    .restart local v2    # "maxRss":J
    :goto_5
    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v4, v14

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    goto :goto_6

    .line 1178
    .end local v2    # "maxRss":J
    .end local v10    # "minUss":J
    .end local v14    # "samples":J
    .end local v18    # "is":I
    .end local v19    # "im":I
    .end local v20    # "avgUss":J
    .end local v22    # "maxPss":J
    .end local v24    # "avgRss":J
    .end local v28    # "ip":I
    .end local v29    # "bucket":I
    .end local v30    # "minPss":J
    .end local v32    # "avgPss":J
    .local v4, "is":I
    .restart local v5    # "im":I
    .local v6, "ip":I
    .restart local v7    # "bucket":I
    .local v8, "samples":J
    :cond_7
    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-wide v14, v8

    .line 1173
    .end local v4    # "is":I
    .end local v5    # "im":I
    .end local v6    # "ip":I
    .end local v7    # "bucket":I
    .end local v8    # "samples":J
    .restart local v18    # "is":I
    .restart local v19    # "im":I
    .restart local v28    # "ip":I
    :goto_6
    add-int/lit8 v6, v28, 0x1

    move-wide/from16 v2, v16

    move/from16 v4, v18

    move/from16 v5, v19

    .end local v28    # "ip":I
    .restart local v6    # "ip":I
    goto/16 :goto_2

    .end local v18    # "is":I
    .end local v19    # "im":I
    .restart local v4    # "is":I
    .restart local v5    # "im":I
    :cond_8
    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v28, v6

    .line 1172
    .end local v4    # "is":I
    .end local v5    # "im":I
    .end local v6    # "ip":I
    .restart local v18    # "is":I
    .restart local v19    # "im":I
    add-int/lit8 v5, v19, 0x1

    .end local v19    # "im":I
    .restart local v5    # "im":I
    goto/16 :goto_1

    .end local v18    # "is":I
    .restart local v4    # "is":I
    :cond_9
    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    .line 1171
    .end local v4    # "is":I
    .end local v5    # "im":I
    .restart local v18    # "is":I
    add-int/lit8 v4, v18, 0x1

    .end local v18    # "is":I
    .restart local v4    # "is":I
    goto/16 :goto_0

    .line 1229
    .end local v4    # "is":I
    :cond_a
    return-void
.end method

.method public blacklist computeProcessTimeLocked([I[I[IJ)J
    .locals 8
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    .line 897
    const-wide/16 v0, 0x0

    .line 898
    .local v0, "totalTime":J
    const/4 v2, 0x0

    .local v2, "is":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 899
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 900
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_2
    array-length v5, p3

    if-ge v4, v5, :cond_0

    .line 901
    aget v5, p1, v2

    aget v6, p2, v3

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    aget v6, p3, v4

    add-int/2addr v5, v6

    .line 903
    .local v5, "bucket":I
    invoke-virtual {p0, v5, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 900
    .end local v5    # "bucket":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 899
    .end local v4    # "ip":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 898
    .end local v3    # "im":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 907
    .end local v2    # "is":I
    :cond_2
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    .line 908
    return-wide v0
.end method

.method public blacklist decActiveServices(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 529
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 531
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 532
    if-gez v0, :cond_1

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proc active services underrun: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 537
    :cond_1
    return-void
.end method

.method public blacklist decStartedServices(IJLjava/lang/String;)V
    .locals 3
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 563
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 565
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 566
    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    rem-int/lit8 v1, v1, 0x10

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 567
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJ)V

    goto :goto_0

    .line 568
    :cond_1
    if-gez v0, :cond_2

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proc started services underrun: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 573
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist dumpAggregatedProtoForStatsd(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V
    .locals 25
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "procName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1554
    .local p8, "procToPkgMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local p9, "uidToPkgMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v8, p0

    move-object/from16 v7, p1

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    move-object v6, v0

    .line 1555
    .local v6, "durationByState":Landroid/util/SparseLongArray;
    const/4 v0, 0x0

    .line 1556
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    move/from16 v20, v0

    .end local v0    # "didCurState":Z
    .local v1, "i":I
    .local v20, "didCurState":Z
    :goto_0
    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const/16 v2, 0x8

    if-ge v1, v0, :cond_3

    .line 1557
    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v0

    .line 1558
    .local v0, "key":I
    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1559
    .local v3, "type":I
    invoke-static {v3}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v4

    .line 1560
    .local v4, "aggregatedType":I
    rem-int/lit8 v5, v3, 0x10

    if-ne v5, v2, :cond_0

    .line 1562
    goto :goto_1

    .line 1565
    :cond_0
    iget-object v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v9

    .line 1566
    .local v9, "time":J
    iget v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, v3, :cond_1

    .line 1567
    const/16 v20, 0x1

    .line 1568
    iget-wide v11, v8, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v11, p6, v11

    add-long/2addr v9, v11

    .line 1570
    :cond_1
    invoke-virtual {v6, v4}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    .line 1571
    .local v2, "index":I
    if-ltz v2, :cond_2

    .line 1572
    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v11

    add-long/2addr v11, v9

    invoke-virtual {v6, v4, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_1

    .line 1574
    :cond_2
    invoke-virtual {v6, v4, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1556
    .end local v0    # "key":I
    .end local v2    # "index":I
    .end local v3    # "type":I
    .end local v4    # "aggregatedType":I
    .end local v9    # "time":J
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1577
    .end local v1    # "i":I
    :cond_3
    if-nez v20, :cond_5

    iget v0, v8, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    rem-int/lit8 v1, v0, 0x10

    if-eq v1, v2, :cond_5

    .line 1580
    invoke-static {v0}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v0

    .line 1581
    .local v0, "aggregatedType":I
    invoke-virtual {v6, v0}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    .line 1582
    .local v1, "index":I
    if-ltz v1, :cond_4

    .line 1583
    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    .line 1584
    invoke-virtual {v6, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1583
    invoke-virtual {v6, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_2

    .line 1586
    :cond_4
    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    invoke-virtual {v6, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1591
    .end local v0    # "aggregatedType":I
    .end local v1    # "index":I
    :cond_5
    :goto_2
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    move-object v14, v0

    .line 1592
    .local v14, "meanRssByState":Landroid/util/SparseLongArray;
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    move-object v15, v0

    .line 1594
    .local v15, "maxRssByState":Landroid/util/SparseLongArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, v8, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_a

    .line 1595
    iget-object v1, v8, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v1

    .line 1596
    .local v1, "key":I
    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 1597
    .local v4, "type":I
    invoke-static {v4}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v5

    .line 1598
    .local v5, "aggregatedType":I
    invoke-virtual {v6, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_6

    .line 1600
    goto :goto_5

    .line 1603
    :cond_6
    iget-object v9, v8, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v9, v1}, Lcom/android/internal/app/procstats/PssTable;->getRssMeanAndMax(I)[J

    move-result-object v9

    .line 1606
    .local v9, "rssMeanAndMax":[J
    aget-wide v10, v9, v2

    iget-object v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v12, v4

    invoke-virtual {v2, v12}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v12

    mul-long/2addr v10, v12

    .line 1607
    .local v10, "meanTimesDuration":J
    invoke-virtual {v14, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_7

    .line 1608
    nop

    .line 1609
    invoke-virtual {v14, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    add-long/2addr v12, v10

    .line 1608
    invoke-virtual {v14, v5, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_4

    .line 1611
    :cond_7
    invoke-virtual {v14, v5, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1615
    :goto_4
    invoke-virtual {v15, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_8

    .line 1616
    invoke-virtual {v15, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    aget-wide v16, v9, v3

    cmp-long v2, v12, v16

    if-gez v2, :cond_8

    .line 1617
    aget-wide v2, v9, v3

    invoke-virtual {v15, v5, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_5

    .line 1618
    :cond_8
    invoke-virtual {v15, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_9

    .line 1619
    aget-wide v2, v9, v3

    invoke-virtual {v15, v5, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1594
    .end local v1    # "key":I
    .end local v4    # "type":I
    .end local v5    # "aggregatedType":I
    .end local v9    # "rssMeanAndMax":[J
    .end local v10    # "meanTimesDuration":J
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1624
    .end local v0    # "i":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1625
    invoke-virtual {v6, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 1626
    .local v1, "aggregatedKey":I
    invoke-virtual {v14, v1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_b

    .line 1628
    goto :goto_8

    .line 1630
    :cond_b
    invoke-virtual {v6, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 1631
    .local v4, "duration":J
    nop

    .line 1632
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-lez v9, :cond_c

    invoke-virtual {v14, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    div-long/2addr v9, v4

    goto :goto_7

    .line 1633
    :cond_c
    invoke-virtual {v14, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    .line 1631
    :goto_7
    invoke-virtual {v14, v1, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1624
    .end local v1    # "aggregatedKey":I
    .end local v4    # "duration":J
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1637
    .end local v0    # "i":I
    :cond_d
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 1638
    .local v12, "token":J
    const-wide v4, 0x10900000001L

    iget-object v9, v8, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget-boolean v0, v8, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_f

    iget v0, v8, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 1639
    move-object/from16 v10, p9

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-le v0, v3, :cond_e

    goto :goto_9

    :cond_e
    move v11, v2

    goto :goto_a

    .line 1638
    :cond_f
    move-object/from16 v10, p9

    .line 1639
    :goto_9
    move v11, v3

    .line 1638
    :goto_a
    move-object/from16 v0, p1

    move-wide v1, v4

    move-object/from16 v3, p4

    move-object v4, v9

    move v5, v11

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 1640
    const-wide v0, 0x10500000002L

    move/from16 v11, p5

    invoke-virtual {v7, v0, v1, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1642
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_b
    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_10

    .line 1643
    const-wide v0, 0x20b00000005L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1645
    .local v3, "stateToken":J
    invoke-virtual {v6, v9}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    .line 1647
    .local v5, "aggregatedKey":I
    const-wide v1, 0x10e00000001L

    const-wide v16, 0x10e0000000aL

    move-object/from16 v0, p1

    move-wide/from16 v21, v3

    .end local v3    # "stateToken":J
    .local v21, "stateToken":J
    move-wide/from16 v3, v16

    move/from16 v23, v5

    .end local v5    # "aggregatedKey":I
    .local v23, "aggregatedKey":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAggregatedProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 1651
    const-wide v0, 0x10300000004L

    move/from16 v2, v23

    .end local v23    # "aggregatedKey":I
    .local v2, "aggregatedKey":I
    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {v7, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1653
    const-wide v0, 0x10b00000008L

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    .line 1657
    invoke-virtual {v14, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1658
    invoke-virtual {v15, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1653
    move v5, v9

    .end local v9    # "i":I
    .local v5, "i":I
    move-object/from16 v9, p1

    move-wide v10, v0

    move-wide v0, v12

    const-wide/16 v12, 0x0

    .end local v12    # "token":J
    .local v0, "token":J
    move-object/from16 v23, v14

    move-object/from16 v24, v15

    .end local v14    # "meanRssByState":Landroid/util/SparseLongArray;
    .end local v15    # "maxRssByState":Landroid/util/SparseLongArray;
    .local v23, "meanRssByState":Landroid/util/SparseLongArray;
    .local v24, "maxRssByState":Landroid/util/SparseLongArray;
    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v9 .. v19}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJII)V

    .line 1660
    move-wide/from16 v3, v21

    .end local v21    # "stateToken":J
    .restart local v3    # "stateToken":J
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1642
    .end local v2    # "aggregatedKey":I
    .end local v3    # "stateToken":J
    add-int/lit8 v9, v5, 0x1

    move/from16 v11, p5

    move-object/from16 v10, p9

    move-wide v12, v0

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    .end local v5    # "i":I
    .restart local v9    # "i":I
    goto :goto_b

    .end local v0    # "token":J
    .end local v23    # "meanRssByState":Landroid/util/SparseLongArray;
    .end local v24    # "maxRssByState":Landroid/util/SparseLongArray;
    .restart local v12    # "token":J
    .restart local v14    # "meanRssByState":Landroid/util/SparseLongArray;
    .restart local v15    # "maxRssByState":Landroid/util/SparseLongArray;
    :cond_10
    move v5, v9

    move-wide v0, v12

    .line 1663
    .end local v9    # "i":I
    .end local v12    # "token":J
    .restart local v0    # "token":J
    iget-object v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const-wide v3, 0x20b00000007L

    move-wide v9, v0

    .end local v0    # "token":J
    .local v9, "token":J
    move-object v0, v2

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, p6

    move-object v11, v6

    .end local v6    # "durationByState":Landroid/util/SparseLongArray;
    .local v11, "durationByState":Landroid/util/SparseLongArray;
    move-object/from16 v6, p0

    move-object v12, v7

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredAssociationStatesProtoForProc(Landroid/util/proto/ProtoOutputStream;JJLcom/android/internal/app/procstats/ProcessState;Landroid/util/SparseArray;)V

    .line 1665
    invoke-virtual {v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1666
    return-void
.end method

.method public blacklist dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1397
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    .line 1398
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1399
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 1400
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1401
    .local v3, "type":I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1402
    invoke-static {p1, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1403
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1404
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v4

    .line 1405
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    .line 1404
    invoke-static {p1, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1398
    .end local v2    # "key":I
    .end local v3    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1407
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .line 1380
    const/4 v0, 0x0

    .line 1381
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1382
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1383
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1384
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    .line 1385
    .local v4, "time":J
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v6, v3, :cond_0

    .line 1386
    const/4 v0, 0x1

    .line 1387
    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    .line 1389
    :cond_0
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1381
    .end local v2    # "key":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1391
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1392
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1394
    :cond_2
    return-void
.end method

.method public blacklist dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .locals 29
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    .line 1234
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    if-eqz p2, :cond_0

    array-length v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 1235
    .local v5, "NSS":I
    :goto_0
    if-eqz p4, :cond_1

    array-length v6, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    .line 1236
    .local v6, "NMS":I
    :goto_1
    if-eqz p6, :cond_2

    array-length v7, v3

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    .line 1237
    .local v7, "NPS":I
    :goto_2
    const/4 v8, 0x0

    .local v8, "iss":I
    :goto_3
    if-ge v8, v5, :cond_11

    .line 1238
    const/4 v9, 0x0

    .local v9, "ims":I
    :goto_4
    if-ge v9, v6, :cond_10

    .line 1239
    const/4 v10, 0x0

    .local v10, "ips":I
    :goto_5
    if-ge v10, v7, :cond_f

    .line 1240
    if-eqz p2, :cond_3

    aget v12, v1, v8

    goto :goto_6

    :cond_3
    const/4 v12, 0x0

    .line 1241
    .local v12, "vsscreen":I
    :goto_6
    if-eqz p4, :cond_4

    aget v13, v2, v9

    goto :goto_7

    :cond_4
    const/4 v13, 0x0

    .line 1242
    .local v13, "vsmem":I
    :goto_7
    if-eqz p6, :cond_5

    aget v14, v3, v10

    goto :goto_8

    :cond_5
    const/4 v14, 0x0

    .line 1243
    .local v14, "vsproc":I
    :goto_8
    if-eqz p2, :cond_6

    const/4 v15, 0x1

    goto :goto_9

    :cond_6
    array-length v15, v1

    .line 1244
    .local v15, "NSA":I
    :goto_9
    if-eqz p4, :cond_7

    const/4 v4, 0x1

    goto :goto_a

    :cond_7
    array-length v4, v2

    .line 1245
    .local v4, "NMA":I
    :goto_a
    if-eqz p6, :cond_8

    const/4 v11, 0x1

    goto :goto_b

    :cond_8
    array-length v11, v3

    .line 1246
    .local v11, "NPA":I
    :goto_b
    const-wide/16 v16, 0x0

    .line 1247
    .local v16, "totalTime":J
    const/16 v18, 0x0

    move/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v5, v16

    move/from16 v16, v7

    move/from16 v7, v18

    .end local v6    # "NMS":I
    .local v5, "totalTime":J
    .local v7, "isa":I
    .local v16, "NPS":I
    .local v19, "NSS":I
    .local v20, "NMS":I
    :goto_c
    if-ge v7, v15, :cond_e

    .line 1248
    const/16 v17, 0x0

    move-wide/from16 v27, v5

    move/from16 v5, v17

    move-wide/from16 v17, v27

    .local v5, "ima":I
    .local v17, "totalTime":J
    :goto_d
    if-ge v5, v4, :cond_d

    .line 1249
    const/4 v6, 0x0

    .local v6, "ipa":I
    :goto_e
    if-ge v6, v11, :cond_c

    .line 1250
    if-eqz p2, :cond_9

    const/16 v21, 0x0

    goto :goto_f

    :cond_9
    aget v21, v1, v7

    .line 1251
    .local v21, "vascreen":I
    :goto_f
    if-eqz p4, :cond_a

    const/16 v22, 0x0

    goto :goto_10

    :cond_a
    aget v22, v2, v5

    .line 1252
    .local v22, "vamem":I
    :goto_10
    if-eqz p6, :cond_b

    const/16 v23, 0x0

    goto :goto_11

    :cond_b
    aget v23, v3, v6

    .line 1253
    .local v23, "vaproc":I
    :goto_11
    add-int v24, v12, v21

    add-int v24, v24, v13

    add-int v24, v24, v22

    mul-int/lit8 v24, v24, 0x10

    add-int v24, v24, v14

    add-int v1, v24, v23

    .line 1255
    .local v1, "bucket":I
    move-object/from16 v2, p0

    move/from16 v24, v4

    move-wide/from16 v3, p8

    .end local v4    # "NMA":I
    .local v24, "NMA":I
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v25

    add-long v17, v17, v25

    .line 1249
    .end local v1    # "bucket":I
    .end local v21    # "vascreen":I
    .end local v22    # "vamem":I
    .end local v23    # "vaproc":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v4, v24

    goto :goto_e

    .end local v24    # "NMA":I
    .restart local v4    # "NMA":I
    :cond_c
    move-object/from16 v2, p0

    move/from16 v24, v4

    move-wide/from16 v3, p8

    .line 1248
    .end local v4    # "NMA":I
    .end local v6    # "ipa":I
    .restart local v24    # "NMA":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v4, v24

    goto :goto_d

    .end local v24    # "NMA":I
    .restart local v4    # "NMA":I
    :cond_d
    move-object/from16 v2, p0

    move/from16 v24, v4

    move-wide/from16 v3, p8

    .line 1247
    .end local v4    # "NMA":I
    .end local v5    # "ima":I
    .restart local v24    # "NMA":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-wide/from16 v5, v17

    move/from16 v4, v24

    goto :goto_c

    .end local v17    # "totalTime":J
    .end local v24    # "NMA":I
    .restart local v4    # "NMA":I
    .local v5, "totalTime":J
    :cond_e
    move-object/from16 v2, p0

    move/from16 v24, v4

    move-wide/from16 v3, p8

    .line 1259
    .end local v4    # "NMA":I
    .end local v7    # "isa":I
    .restart local v24    # "NMA":I
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1239
    .end local v5    # "totalTime":J
    .end local v11    # "NPA":I
    .end local v12    # "vsscreen":I
    .end local v13    # "vsmem":I
    .end local v14    # "vsproc":I
    .end local v15    # "NSA":I
    .end local v24    # "NMA":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v7, v16

    move/from16 v5, v19

    move/from16 v6, v20

    goto/16 :goto_5

    .end local v16    # "NPS":I
    .end local v19    # "NSS":I
    .end local v20    # "NMS":I
    .local v5, "NSS":I
    .local v6, "NMS":I
    .local v7, "NPS":I
    :cond_f
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v16, v7

    .line 1238
    .end local v5    # "NSS":I
    .end local v6    # "NMS":I
    .end local v7    # "NPS":I
    .end local v10    # "ips":I
    .restart local v16    # "NPS":I
    .restart local v19    # "NSS":I
    .restart local v20    # "NMS":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    goto/16 :goto_4

    .end local v16    # "NPS":I
    .end local v19    # "NSS":I
    .end local v20    # "NMS":I
    .restart local v5    # "NSS":I
    .restart local v6    # "NMS":I
    .restart local v7    # "NPS":I
    :cond_10
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v16, v7

    .line 1237
    .end local v5    # "NSS":I
    .end local v6    # "NMS":I
    .end local v7    # "NPS":I
    .end local v9    # "ims":I
    .restart local v16    # "NPS":I
    .restart local v19    # "NSS":I
    .restart local v20    # "NMS":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    goto/16 :goto_3

    .line 1264
    .end local v8    # "iss":I
    .end local v16    # "NPS":I
    .end local v19    # "NSS":I
    .end local v20    # "NMS":I
    .restart local v5    # "NSS":I
    .restart local v6    # "NMS":I
    .restart local v7    # "NPS":I
    :cond_11
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V
    .locals 29
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "procName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "now"    # J

    .line 1445
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p6

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1446
    .local v13, "token":J
    const-wide v1, 0x10900000001L

    move-object/from16 v15, p4

    invoke-virtual {v10, v1, v2, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1447
    const-wide v1, 0x10500000002L

    move/from16 v8, p5

    invoke-virtual {v10, v1, v2, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1448
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v3, :cond_0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v3, :cond_1

    .line 1449
    :cond_0
    const-wide v3, 0x10b00000003L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1450
    .local v6, "killToken":J
    const-wide v3, 0x10500000001L

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v10, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1451
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v10, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1452
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v1, p1

    move-wide/from16 v16, v2

    const-wide v2, 0x10b00000003L

    move-wide/from16 v18, v6

    .end local v6    # "killToken":J
    .local v18, "killToken":J
    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 1454
    move-wide/from16 v1, v18

    .end local v18    # "killToken":J
    .local v1, "killToken":J
    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1458
    .end local v1    # "killToken":J
    :cond_1
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    move-object v9, v1

    .line 1459
    .local v9, "durationByState":Landroid/util/SparseLongArray;
    const/4 v1, 0x0

    .line 1460
    .local v1, "didCurState":Z
    const/4 v2, 0x0

    move/from16 v16, v1

    .end local v1    # "didCurState":Z
    .local v2, "i":I
    .local v16, "didCurState":Z
    :goto_0
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 1461
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v1

    .line 1462
    .local v1, "key":I
    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1463
    .local v3, "type":I
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    .line 1464
    .local v4, "time":J
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v6, v3, :cond_2

    .line 1465
    const/4 v6, 0x1

    .line 1466
    .end local v16    # "didCurState":Z
    .local v6, "didCurState":Z
    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v7, v11, v7

    add-long/2addr v4, v7

    move/from16 v16, v6

    .line 1468
    .end local v6    # "didCurState":Z
    .restart local v16    # "didCurState":Z
    :cond_2
    invoke-virtual {v9, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1460
    .end local v1    # "key":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1470
    .end local v2    # "i":I
    :cond_3
    if-nez v16, :cond_4

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1471
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, v11, v2

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1474
    :cond_4
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_1
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    const-wide v6, 0x20b00000005L

    const-wide v4, 0x10300000004L

    if-ge v8, v1, :cond_6

    .line 1475
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, v8}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 1476
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1477
    .restart local v3    # "type":I
    invoke-virtual {v9, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_5

    .line 1479
    move/from16 v17, v8

    goto :goto_2

    .line 1481
    :cond_5
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1482
    .local v6, "stateToken":J
    const-wide v17, 0x10e00000001L

    const-wide v19, 0x10e00000002L

    const-wide v21, 0x10e00000003L

    move-object/from16 v1, p1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v2    # "key":I
    .end local v3    # "type":I
    .local v23, "key":I
    .local v24, "type":I
    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v25, v6

    .end local v6    # "stateToken":J
    .local v25, "stateToken":J
    move-wide/from16 v6, v21

    move/from16 v17, v8

    .end local v8    # "i":I
    .local v17, "i":I
    move/from16 v8, v24

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1488
    move/from16 v1, v24

    .end local v24    # "type":I
    .local v1, "type":I
    invoke-virtual {v9, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .line 1489
    .local v2, "duration":J
    invoke-virtual {v9, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1490
    const-wide v4, 0x10300000004L

    invoke-virtual {v10, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1492
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    move/from16 v5, v23

    .end local v23    # "key":I
    .local v5, "key":I
    invoke-virtual {v4, v10, v5}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProtoForKey(Landroid/util/proto/ProtoOutputStream;I)V

    .line 1494
    move-wide/from16 v6, v25

    .end local v25    # "stateToken":J
    .restart local v6    # "stateToken":J
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1474
    .end local v1    # "type":I
    .end local v2    # "duration":J
    .end local v5    # "key":I
    .end local v6    # "stateToken":J
    :goto_2
    add-int/lit8 v8, v17, 0x1

    .end local v17    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    :cond_6
    move/from16 v17, v8

    .line 1497
    .end local v8    # "i":I
    const/4 v1, 0x0

    move v8, v1

    .restart local v8    # "i":I
    :goto_3
    invoke-virtual {v9}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_7

    .line 1498
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1499
    .local v2, "stateToken":J
    const-wide v17, 0x10e00000001L

    const-wide v19, 0x10e00000002L

    const-wide v21, 0x10e00000003L

    .line 1503
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v23

    .line 1499
    move-object/from16 v1, p1

    move-wide/from16 v27, v2

    .end local v2    # "stateToken":J
    .local v27, "stateToken":J
    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v17, v6

    move-wide/from16 v6, v21

    move v15, v8

    .end local v8    # "i":I
    .local v15, "i":I
    move/from16 v8, v23

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1504
    invoke-virtual {v9, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v1

    const-wide v3, 0x10300000004L

    invoke-virtual {v10, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1505
    move-wide/from16 v1, v27

    .end local v27    # "stateToken":J
    .local v1, "stateToken":J
    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1497
    .end local v1    # "stateToken":J
    add-int/lit8 v8, v15, 0x1

    move-object/from16 v15, p4

    move-wide v4, v3

    move-wide/from16 v6, v17

    .end local v15    # "i":I
    .restart local v8    # "i":I
    goto :goto_3

    :cond_7
    move-wide v3, v4

    move v15, v8

    .line 1508
    .end local v8    # "i":I
    invoke-virtual {v0, v11, v12}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v1

    .line 1509
    .local v1, "totalRunningDuration":J
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_9

    .line 1510
    const-wide v7, 0x10b00000006L

    invoke-virtual {v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1511
    .local v7, "stateToken":J
    invoke-virtual {v10, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1512
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v4, 0x0

    aget-wide v17, v3, v4

    cmp-long v5, v17, v5

    if-eqz v5, :cond_8

    .line 1513
    invoke-static {v10, v3, v4}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V

    .line 1515
    :cond_8
    invoke-virtual {v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1518
    .end local v7    # "stateToken":J
    :cond_9
    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1519
    return-void
.end method

.method blacklist dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "reqPackage"    # Ljava/lang/String;
    .param p4, "totalTime"    # J
    .param p6, "now"    # J
    .param p8, "dumpAll"    # Z

    .line 1131
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    if-eqz p8, :cond_2

    .line 1132
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "myID="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    const-string v1, " mCommonProcess="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    const-string v1, " mPackage="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    .line 1138
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mMultiPackage="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1140
    :cond_0
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, v1, :cond_1

    .line 1141
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Common Proc: "

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1142
    const-string v1, "/"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1143
    const-string v1, " pkg="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1145
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    .line 1146
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Aggregated Association Sources:"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "        "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 1149
    move-wide/from16 v11, p4

    move-wide/from16 v8, p6

    invoke-static {v8, v9, v11, v12, v1}, Lcom/android/internal/app/procstats/AssociationState;->createSortedAssociations(JJLandroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v15, 0x1

    .line 1147
    move-object/from16 v1, p1

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move v11, v15

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/procstats/AssociationState;->dumpSources(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V

    .line 1153
    :cond_2
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-eqz v1, :cond_3

    .line 1154
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mActive="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1156
    :cond_3
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v1, :cond_4

    .line 1157
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDead="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1159
    :cond_4
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-nez v1, :cond_5

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-eqz v1, :cond_6

    .line 1160
    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mNumActiveServices="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1161
    const-string v1, " mNumStartedServices="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1164
    :cond_6
    return-void
.end method

.method public blacklist dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "itemName"    # Ljava/lang/String;
    .param p7, "now"    # J

    .line 1268
    const-string/jumbo v0, "pkgproc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1270
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1272
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1274
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p0, p1, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1277
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1278
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1279
    const-string/jumbo v1, "pkgpss,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1283
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1285
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1288
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1290
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 1291
    const-string/jumbo v1, "pkgrun,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1295
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1297
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1298
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1301
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1302
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1303
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1305
    :cond_1
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_3

    .line 1306
    :cond_2
    const-string/jumbo v1, "pkgkills,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1318
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1320
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1322
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1324
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1325
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1326
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1328
    :cond_3
    return-void
.end method

.method public blacklist dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "now"    # J

    .line 1331
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const-string v1, ","

    if-lez v0, :cond_0

    .line 1332
    const-string/jumbo v0, "proc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1336
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1337
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1340
    const-string/jumbo v0, "pss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1344
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1345
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1347
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 1348
    const-string/jumbo v0, "procrun,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1352
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1354
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1356
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1358
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_4

    .line 1359
    :cond_3
    const-string/jumbo v0, "kills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1363
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1364
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1366
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1367
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1368
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1369
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1370
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1371
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1372
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1373
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1374
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1375
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1377
    :cond_4
    return-void
.end method

.method public blacklist dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-wide/16 v5, 0x0

    .line 966
    .local v5, "totalTime":J
    const/4 v7, -0x1

    .line 967
    .local v7, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_0
    array-length v9, v2

    const-string v11, ": "

    if-ge v8, v9, :cond_8

    .line 968
    const/4 v9, -0x1

    .line 969
    .local v9, "printedMem":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "im":I
    :goto_1
    array-length v10, v3

    if-ge v14, v10, :cond_7

    .line 970
    const/4 v10, 0x0

    .local v10, "ip":I
    :goto_2
    array-length v15, v4

    if-ge v10, v15, :cond_6

    .line 971
    aget v15, v2, v8

    .line 972
    .local v15, "iscreen":I
    aget v12, v3, v14

    .line 973
    .local v12, "imem":I
    add-int v13, v15, v12

    mul-int/lit8 v13, v13, 0x10

    aget v19, v4, v10

    add-int v13, v13, v19

    .line 974
    .local v13, "bucket":I
    move/from16 v19, v8

    .end local v8    # "is":I
    .local v19, "is":I
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move/from16 v20, v14

    .end local v14    # "im":I
    .local v20, "im":I
    int-to-byte v14, v13

    invoke-virtual {v8, v14}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v21

    .line 975
    .local v21, "time":J
    const-string v8, ""

    .line 976
    .local v8, "running":Ljava/lang/String;
    iget v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v14, v13, :cond_0

    .line 977
    const-string v8, " (running)"

    .line 978
    move/from16 v23, v13

    .end local v13    # "bucket":I
    .local v23, "bucket":I
    iget-wide v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v13, p6, v13

    add-long v21, v21, v13

    move-wide/from16 v13, v21

    goto :goto_3

    .line 976
    .end local v23    # "bucket":I
    .restart local v13    # "bucket":I
    :cond_0
    move/from16 v23, v13

    .end local v13    # "bucket":I
    .restart local v23    # "bucket":I
    move-wide/from16 v13, v21

    .line 980
    .end local v21    # "time":J
    .local v13, "time":J
    :goto_3
    const-wide/16 v17, 0x0

    cmp-long v21, v13, v17

    if-eqz v21, :cond_5

    .line 981
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 982
    array-length v0, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 983
    if-eq v7, v15, :cond_1

    .line 984
    move v0, v15

    goto :goto_4

    :cond_1
    const/4 v0, -0x1

    .line 983
    :goto_4
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 985
    move v7, v15

    .line 987
    :cond_2
    array-length v0, v3

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 988
    nop

    .line 989
    if-eq v9, v12, :cond_3

    move v0, v12

    goto :goto_5

    :cond_3
    const/4 v0, -0x1

    .line 988
    :goto_5
    const/16 v2, 0x2f

    invoke-static {v1, v0, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 990
    move v0, v12

    move v9, v0

    .line 992
    :cond_4
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v2, v4, v10

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    invoke-static {v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    add-long/2addr v5, v13

    .line 970
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

    .line 969
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

    .line 967
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

    .line 999
    .end local v8    # "is":I
    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_b

    .line 1000
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v8, 0x1

    if-le v2, v8, :cond_9

    .line 1002
    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_6

    .line 1001
    :cond_9
    const/4 v2, -0x1

    .line 1004
    :goto_6
    array-length v9, v3

    if-le v9, v8, :cond_a

    .line 1005
    const/16 v8, 0x2f

    invoke-static {v1, v2, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1007
    :cond_a
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1010
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    .line 999
    :cond_b
    move-object/from16 v0, p3

    .line 1012
    :goto_7
    return-void
.end method

.method public blacklist dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .line 1016
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    .line 1017
    .local v5, "printedHeader":Z
    const/4 v6, -0x1

    .line 1018
    .local v6, "printedScreen":I
    const/4 v7, 0x0

    .local v7, "is":I
    :goto_0
    array-length v8, v2

    const-string v9, ": "

    if-ge v7, v8, :cond_8

    .line 1019
    const/4 v8, -0x1

    .line 1020
    .local v8, "printedMem":I
    const/4 v10, 0x0

    .local v10, "im":I
    :goto_1
    array-length v11, v3

    if-ge v10, v11, :cond_7

    .line 1021
    const/4 v11, 0x0

    .local v11, "ip":I
    :goto_2
    array-length v12, v4

    if-ge v11, v12, :cond_6

    .line 1022
    aget v12, v2, v7

    .line 1023
    .local v12, "iscreen":I
    aget v13, v3, v10

    .line 1024
    .local v13, "imem":I
    add-int v14, v12, v13

    mul-int/lit8 v14, v14, 0x10

    aget v15, v4, v11

    add-int/2addr v14, v15

    .line 1025
    .local v14, "bucket":I
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    move/from16 v16, v7

    .end local v7    # "is":I
    .local v16, "is":I
    int-to-byte v7, v14

    invoke-virtual {v15, v7}, Lcom/android/internal/app/procstats/PssTable;->getKey(B)I

    move-result v7

    .line 1026
    .local v7, "key":I
    const/4 v15, -0x1

    if-ne v7, v15, :cond_0

    .line 1027
    goto/16 :goto_6

    .line 1029
    :cond_0
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v15, v7}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v15

    .line 1030
    .local v15, "table":[J
    move/from16 v17, v14

    .end local v14    # "bucket":I
    .local v17, "bucket":I
    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v14

    .line 1031
    .local v14, "tableOffset":I
    if-nez v5, :cond_1

    .line 1032
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    move/from16 v18, v5

    .end local v5    # "printedHeader":Z
    .local v18, "printedHeader":Z
    const-string v5, "PSS/USS ("

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1035
    const-string v5, " entries):"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    const/4 v5, 0x1

    .end local v18    # "printedHeader":Z
    .restart local v5    # "printedHeader":Z
    goto :goto_3

    .line 1031
    :cond_1
    move/from16 v18, v5

    .line 1038
    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    move/from16 v18, v5

    .end local v5    # "printedHeader":Z
    .restart local v18    # "printedHeader":Z
    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1040
    array-length v5, v2

    const/4 v2, 0x1

    if-le v5, v2, :cond_3

    .line 1041
    nop

    .line 1042
    if-eq v6, v12, :cond_2

    move v5, v12

    goto :goto_4

    :cond_2
    const/4 v5, -0x1

    .line 1041
    :goto_4
    invoke-static {v1, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 1043
    move v6, v12

    .line 1045
    :cond_3
    array-length v5, v3

    if-le v5, v2, :cond_5

    .line 1046
    nop

    .line 1047
    if-eq v8, v13, :cond_4

    move v2, v13

    goto :goto_5

    :cond_4
    const/4 v2, -0x1

    :goto_5
    const/16 v5, 0x2f

    .line 1046
    invoke-static {v1, v2, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1048
    move v2, v13

    move v8, v2

    .line 1050
    :cond_5
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v5, v4, v11

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    invoke-static {v1, v15, v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamples(Ljava/io/PrintWriter;[JI)V

    .line 1052
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move/from16 v5, v18

    .line 1021
    .end local v7    # "key":I
    .end local v12    # "iscreen":I
    .end local v13    # "imem":I
    .end local v14    # "tableOffset":I
    .end local v15    # "table":[J
    .end local v17    # "bucket":I
    .end local v18    # "printedHeader":Z
    .restart local v5    # "printedHeader":Z
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p3

    move/from16 v7, v16

    goto/16 :goto_2

    .end local v16    # "is":I
    .local v7, "is":I
    :cond_6
    move/from16 v18, v5

    move/from16 v16, v7

    .line 1020
    .end local v5    # "printedHeader":Z
    .end local v7    # "is":I
    .end local v11    # "ip":I
    .restart local v16    # "is":I
    .restart local v18    # "printedHeader":Z
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p3

    goto/16 :goto_1

    .end local v16    # "is":I
    .end local v18    # "printedHeader":Z
    .restart local v5    # "printedHeader":Z
    .restart local v7    # "is":I
    :cond_7
    move/from16 v16, v7

    .line 1018
    .end local v7    # "is":I
    .end local v8    # "printedMem":I
    .end local v10    # "im":I
    .restart local v16    # "is":I
    add-int/lit8 v7, v16, 0x1

    move-object/from16 v2, p3

    .end local v16    # "is":I
    .restart local v7    # "is":I
    goto/16 :goto_0

    :cond_8
    move/from16 v16, v7

    .line 1056
    .end local v7    # "is":I
    move-wide/from16 v7, p6

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v10

    .line 1057
    .local v10, "totalRunningDuration":J
    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-eqz v2, :cond_b

    .line 1058
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    const-string v2, "Cur time "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1061
    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    cmp-long v2, v14, v12

    if-eqz v2, :cond_9

    .line 1062
    const-string v2, " (running)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    :cond_9
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v14, 0x0

    aget-wide v15, v2, v14

    cmp-long v2, v15, v12

    if-eqz v2, :cond_a

    .line 1065
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {v1, v2, v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamples(Ljava/io/PrintWriter;[JI)V

    .line 1068
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1070
    :cond_b
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-eqz v2, :cond_c

    .line 1071
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed for excessive CPU use: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    :cond_c
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-eqz v2, :cond_d

    .line 1075
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed from cached state: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times from pss "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    invoke-static {v1, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    mul-long/2addr v12, v14

    invoke-static {v1, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    mul-long/2addr v12, v14

    invoke-static {v1, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1081
    :cond_d
    return-void
.end method

.method public blacklist dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJ)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J

    .line 914
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 915
    const-string v0, "* "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 916
    if-eqz v14, :cond_0

    .line 917
    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    :cond_0
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    const-string v0, " / "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 921
    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-static {v13, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 922
    const-string v0, " / v"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 923
    iget-wide v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v13, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 924
    const-string v0, ":"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 927
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v3, v0, v15

    new-array v6, v11, [I

    aput v15, v6, v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v15, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 929
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget-object v3, v0, v15

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v15, v6, v0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 931
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 934
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v3, v0, v11

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v11, v6, v0

    move-object/from16 v0, p0

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 937
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 940
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 943
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 945
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 947
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 950
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 952
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 954
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 956
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 958
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_CACHED:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 961
    return-void

    :array_0
    .array-data 4
        0xd
        0xe
        0xf
    .end array-data
.end method

.method public blacklist getCombinedState()I
    .locals 1

    .line 487
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    return v0
.end method

.method public blacklist getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public blacklist getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 748
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    .line 749
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, p1, :cond_0

    .line 750
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 752
    :cond_0
    return-wide v0
.end method

.method public blacklist getDurationsBucketCount()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getOrCreateSourceState(Lcom/android/internal/app/procstats/AssociationState$SourceKey;)Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .locals 4
    .param p1, "key"    # Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 796
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 797
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 800
    .local v0, "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-nez v0, :cond_1

    .line 801
    new-instance v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    move-object v0, v1

    .line 802
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    :cond_1
    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 764
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 768
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 760
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 788
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 792
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 784
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssSampleCount(I)J
    .locals 3
    .param p1, "state"    # I

    .line 756
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 776
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 780
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 772
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTotalRunningDuration(J)J
    .locals 7
    .param p1, "now"    # J

    .line 743
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 744
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v4, p1, v2

    :cond_0
    add-long/2addr v0, v4

    .line 743
    return-wide v0
.end method

.method public blacklist getUid()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return v0
.end method

.method public blacklist getVersion()J
    .locals 2

    .line 252
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    return-wide v0
.end method

.method public blacklist hasAnyData()Z
    .locals 6

    .line 419
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 421
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 419
    :cond_1
    return v1
.end method

.method public blacklist incActiveServices(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 516
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 518
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 519
    return-void
.end method

.method public blacklist incStartedServices(IJLjava/lang/String;)V
    .locals 2
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 547
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 549
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 550
    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 551
    mul-int/lit8 v0, p1, 0x10

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJ)V

    .line 553
    :cond_1
    return-void
.end method

.method public blacklist isActive()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return v0
.end method

.method public blacklist isInUse()Z
    .locals 2

    .line 410
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isMultiPackage()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return v0
.end method

.method public blacklist makeActive()V
    .locals 1

    .line 401
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 403
    return-void
.end method

.method public blacklist makeDead()V
    .locals 1

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    .line 320
    return-void
.end method

.method public blacklist makeInactive()V
    .locals 1

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 407
    return-void
.end method

.method public blacklist makeStandalone()V
    .locals 0

    .line 240
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 241
    return-void
.end method

.method public blacklist pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 676
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_3

    .line 680
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 681
    .local v0, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const-string v1, "Didn\'t find package "

    const-string v2, " / "

    if-eqz v0, :cond_2

    .line 685
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 686
    .local v3, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    const-string v4, " vers "

    if-eqz v3, :cond_1

    .line 690
    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 691
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_0

    .line 695
    return-object v1

    .line 692
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Didn\'t create per-package process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 687
    .end local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 682
    .end local v3    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 697
    .end local v0    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_3
    return-object p0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;IZ)Z
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "fully"    # Z

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 359
    .local v0, "multiPackage":Z
    :goto_0
    if-eqz p3, :cond_1

    .line 360
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 363
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 364
    return v1

    .line 367
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 368
    return v1

    .line 370
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v3, 0xa

    if-ge v1, v3, :cond_4

    .line 371
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 377
    if-lez v1, :cond_5

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_2

    .line 382
    :cond_5
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 386
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .local v1, "numOfSources":I
    if-lez v1, :cond_6

    .line 388
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 389
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_6

    .line 390
    new-instance v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v4, v5, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)V

    .line 391
    .local v4, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    new-instance v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, p0, v4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    .line 392
    .local v5, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v5, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    .line 393
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v4    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v5    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 397
    .end local v3    # "i":I
    :cond_6
    return v2
.end method

.method public blacklist reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 9
    .param p2, "pss"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    .line 664
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 665
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v1, 0x1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 666
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    .line 667
    return-void

    .line 670
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 671
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    const/4 v2, 0x1

    move-wide v3, p2

    move-wide v5, p2

    move-wide v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 670
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 673
    .end local v0    # "ip":I
    :cond_1
    return-void
.end method

.method public blacklist reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 633
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 634
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 635
    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    .line 636
    return-void

    .line 639
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 640
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 639
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 642
    .end local v0    # "ip":I
    :cond_1
    return-void
.end method

.method public blacklist resetSafely(J)V
    .locals 3
    .param p1, "now"    # J

    .line 297
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 298
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    .line 299
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 301
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 302
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 303
    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 304
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 306
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 309
    .local v1, "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->resetSafely(J)V

    goto :goto_1

    .line 312
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 307
    .end local v1    # "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 316
    .end local v0    # "ip":I
    :cond_1
    return-void
.end method

.method public blacklist setCombinedState(IJ)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 458
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 459
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-eq v0, p1, :cond_2

    .line 461
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 462
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 464
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 465
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    goto :goto_1

    .line 466
    :cond_0
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v3, v2, :cond_1

    .line 469
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 470
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 471
    const/16 v2, 0x9

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 472
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aput-wide v0, v3, v2

    .line 471
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 477
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 478
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/UidState;

    .line 479
    .local v0, "mUidState":Lcom/android/internal/app/procstats/UidState;
    if-eqz v0, :cond_2

    .line 480
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(IJ)V

    .line 484
    .end local v0    # "mUidState":Lcom/android/internal/app/procstats/UidState;
    :cond_2
    return-void
.end method

.method public blacklist setMultiPackage(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 260
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 261
    return-void
.end method

.method public blacklist setState(IIJLandroid/util/ArrayMap;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 435
    .local p5, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    if-gez p1, :cond_1

    .line 436
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez v0, :cond_0

    .line 437
    mul-int/lit8 v0, p2, 0x10

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move p1, v0

    goto :goto_1

    .line 439
    :cond_1
    sget-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget v0, v0, p1

    mul-int/lit8 v1, p2, 0x10

    add-int p1, v0, v1

    .line 443
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJ)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_2

    .line 447
    return-void

    .line 450
    :cond_2
    if-eqz p5, :cond_3

    .line 451
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_2
    if-ltz v0, :cond_3

    .line 452
    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJ)V

    .line 451
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 455
    .end local v0    # "ip":I
    :cond_3
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1434
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1435
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1436
    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, p0, :cond_1

    const-string v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;J)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .line 331
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_1

    .line 342
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 343
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 344
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 348
    .local v1, "numOfSources":I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 350
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 351
    .local v3, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 352
    .local v4, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3, v5, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;)V

    .line 353
    invoke-virtual {v4, p1, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 349
    .end local v3    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v4    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 355
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
