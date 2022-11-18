.class public Landroid/util/TimingsTraceLog;
.super Ljava/lang/Object;
.source "TimingsTraceLog.java"


# static fields
.field private static final greylist-max-o DEBUG_BOOT_TIME:Z

.field private static final blacklist MAX_NESTED_CALLS:I = 0xa


# instance fields
.field private blacklist mCurrentLevel:I

.field private final blacklist mMaxNestedCalls:I

.field private final blacklist mStartNames:[Ljava/lang/String;

.field private final blacklist mStartTimes:[J

.field private final greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mThreadId:J

.field private final greylist-max-o mTraceTag:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/util/TimingsTraceLog;)V
    .locals 2
    .param p1, "other"    # Landroid/util/TimingsTraceLog;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    .line 76
    iget-object v0, p1, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    .line 77
    iget-wide v0, p1, Landroid/util/TimingsTraceLog;->mTraceTag:J

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    .line 79
    iget v0, p1, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    iput v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    .line 80
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartNamesArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartTimesArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    .line 82
    iget v0, p1, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    .line 83
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "traceTag"    # J

    .line 55
    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;JI)V

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "traceTag"    # J
    .param p4, "maxNestedCalls"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    .line 60
    iput-object p1, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    .line 61
    iput-wide p2, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    .line 63
    iput p4, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    .line 64
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartNamesArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartTimesArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    .line 66
    return-void
.end method

.method private greylist-max-o assertSameThread()V
    .locals 5

    .line 138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 139
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 144
    return-void

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance of TimingsTraceLog can only be called from the thread it was created on (tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), but was from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist createAndGetStartNamesArray()[Ljava/lang/String;
    .locals 1

    .line 86
    iget v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lez v0, :cond_0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private blacklist createAndGetStartTimesArray()[J
    .locals 1

    .line 90
    iget v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lez v0, :cond_0

    new-array v0, v0, [J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final blacklist getUnfinishedTracesForDebug()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gez v0, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gt v1, v2, :cond_1

    .line 166
    iget-object v2, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 163
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o logDuration(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 150
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " took to complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public greylist-max-o traceBegin(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->assertSameThread()V

    .line 99
    iget-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 101
    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lt v1, v2, :cond_1

    .line 104
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not tracing duration of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' because already reached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " levels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    .line 110
    iget-object v1, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 111
    iget-object v1, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 112
    return-void
.end method

.method public greylist-max-o traceEnd()V
    .locals 7

    .line 120
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->assertSameThread()V

    .line 121
    iget-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 123
    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gez v0, :cond_1

    .line 126
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "traceEnd called more times than traceBegin"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 131
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    iget v4, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    aget-wide v5, v3, v4

    sub-long/2addr v1, v5

    .line 132
    .local v1, "duration":J
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    .line 134
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 135
    return-void
.end method
