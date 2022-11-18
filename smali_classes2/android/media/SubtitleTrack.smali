.class public abstract Landroid/media/SubtitleTrack;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Landroid/media/MediaTimeProvider$OnMediaTimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$RenderingWidget;,
        Landroid/media/SubtitleTrack$Run;,
        Landroid/media/SubtitleTrack$Cue;,
        Landroid/media/SubtitleTrack$CueList;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SubtitleTrack"


# instance fields
.field public greylist-max-o DEBUG:Z

.field protected final greylist-max-o mActiveCues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist-max-o mCues:Landroid/media/SubtitleTrack$CueList;

.field private greylist-max-o mFormat:Landroid/media/MediaFormat;

.field protected greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mLastTimeMs:J

.field private greylist-max-o mLastUpdateTimeMs:J

.field private greylist-max-o mNextScheduledTimeMs:J

.field private greylist-max-o mRunnable:Ljava/lang/Runnable;

.field protected final greylist-max-o mRunsByEndTime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected final greylist-max-o mRunsByID:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist-max-o mTimeProvider:Landroid/media/MediaTimeProvider;

.field protected greylist-max-o mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmRunnable(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/MediaFormat;)V
    .locals 3
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    .line 50
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    .line 60
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 68
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    .line 69
    new-instance v2, Landroid/media/SubtitleTrack$CueList;

    invoke-direct {v2}, Landroid/media/SubtitleTrack$CueList;-><init>()V

    iput-object v2, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    .line 70
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 71
    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 72
    return-void
.end method

.method private greylist-max-o removeRunsByEndTimeIndex(I)V
    .locals 6
    .param p1, "ix"    # I

    .line 172
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 173
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    :goto_0
    if-eqz v0, :cond_1

    .line 174
    iget-object v1, v0, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    .line 175
    .local v1, "cue":Landroid/media/SubtitleTrack$Cue;
    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 176
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v3, v1}, Landroid/media/SubtitleTrack$CueList;->remove(Landroid/media/SubtitleTrack$Cue;)V

    .line 177
    iget-object v3, v1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 178
    .local v3, "nextCue":Landroid/media/SubtitleTrack$Cue;
    iput-object v2, v1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 179
    move-object v1, v3

    .line 180
    .end local v3    # "nextCue":Landroid/media/SubtitleTrack$Cue;
    goto :goto_1

    .line 181
    :cond_0
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/media/SubtitleTrack$Run;->mRunID:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 182
    iget-object v3, v0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 183
    .local v3, "nextRun":Landroid/media/SubtitleTrack$Run;
    iput-object v2, v0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 184
    iput-object v2, v0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 185
    move-object v0, v3

    .line 186
    .end local v1    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v3    # "nextRun":Landroid/media/SubtitleTrack$Run;
    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 188
    return-void
.end method

.method private declared-synchronized greylist-max-o takeTime(J)V
    .locals 0
    .param p1, "timeMs"    # J

    monitor-enter p0

    .line 202
    :try_start_0
    iput-wide p1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 201
    .end local p0    # "this":Landroid/media/SubtitleTrack;
    .end local p1    # "timeMs":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected declared-synchronized greylist-max-o addCue(Landroid/media/SubtitleTrack$Cue;)Z
    .locals 11
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v0, p1}, Landroid/media/SubtitleTrack$CueList;->add(Landroid/media/SubtitleTrack$Cue;)V

    .line 311
    iget-wide v0, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 313
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-nez v0, :cond_0

    .line 314
    new-instance v1, Landroid/media/SubtitleTrack$Run;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/media/SubtitleTrack$Run;-><init>(Landroid/media/SubtitleTrack$Run-IA;)V

    move-object v0, v1

    .line 315
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v1, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 316
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v4, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    goto :goto_0

    .line 317
    .end local p0    # "this":Landroid/media/SubtitleTrack;
    :cond_0
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    iget-wide v6, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 318
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v4, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 322
    :cond_1
    :goto_0
    iget-object v1, v0, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    iput-object v1, p1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 323
    iput-object p1, v0, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    .line 327
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_2
    const-wide/16 v0, -0x1

    .line 328
    .local v0, "nowMs":J
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 330
    :try_start_1
    invoke-interface {v4, v6, v5}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v7

    .line 334
    goto :goto_1

    .line 332
    :catch_0
    move-exception v4

    .line 337
    :cond_3
    :goto_1
    :try_start_2
    iget-boolean v4, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "SubtitleTrack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " <= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_4
    iget-boolean v4, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v4, :cond_8

    iget-wide v7, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    cmp-long v4, v7, v0

    if-gtz v4, :cond_8

    iget-wide v7, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v9, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v4, v7, v9

    if-ltz v4, :cond_8

    .line 345
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    .line 346
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 348
    :cond_5
    move-object v2, p0

    .line 349
    .local v2, "track":Landroid/media/SubtitleTrack;
    move-wide v3, v0

    .line 350
    .local v3, "thenMs":J
    new-instance v6, Landroid/media/SubtitleTrack$1;

    invoke-direct {v6, p0, v2, v3, v4}, Landroid/media/SubtitleTrack$1;-><init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V

    iput-object v6, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    .line 364
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xa

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 365
    iget-boolean v6, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "SubtitleTrack"

    const-string v7, "scheduling update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 367
    :cond_6
    iget-boolean v6, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "SubtitleTrack"

    const-string v7, "failed to schedule subtitle view update"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    :cond_7
    :goto_2
    monitor-exit p0

    return v5

    .line 372
    .end local v2    # "track":Landroid/media/SubtitleTrack;
    .end local v3    # "thenMs":J
    :cond_8
    :try_start_3
    iget-boolean v4, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v4, :cond_a

    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v7, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v4, v4, v7

    if-ltz v4, :cond_a

    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v7, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    cmp-long v4, v4, v7

    if-ltz v4, :cond_9

    cmp-long v2, v7, v2

    if-gez v2, :cond_a

    .line 376
    :cond_9
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    :cond_a
    monitor-exit p0

    return v6

    .line 308
    .end local v0    # "nowMs":J
    .end local p1    # "cue":Landroid/media/SubtitleTrack$Cue;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized greylist-max-o clearActiveCues()V
    .locals 3

    monitor-enter p0

    .line 207
    :try_start_0
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local p0    # "this":Landroid/media/SubtitleTrack;
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 209
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 194
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "ix":I
    :goto_0
    if-ltz v1, :cond_0

    .line 195
    invoke-direct {p0, v1}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    .line 194
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 198
    .end local v1    # "ix":I
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 199
    return-void
.end method

.method protected greylist-max-o finishedRun(J)V
    .locals 2
    .param p1, "runID"    # J

    .line 597
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 599
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_0

    .line 600
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    .line 603
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_0
    return-void
.end method

.method public final greylist-max-o getFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 76
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract greylist-max-o getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
.end method

.method public greylist-max-o getTrackType()I
    .locals 1

    .line 618
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x3

    goto :goto_0

    .line 620
    :cond_0
    const/4 v0, 0x4

    .line 618
    :goto_0
    return v0
.end method

.method public greylist-max-o hide()V
    .locals 2

    .line 293
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-nez v0, :cond_0

    .line 294
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 300
    :cond_1
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    .line 301
    .local v0, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 302
    invoke-interface {v0, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 304
    :cond_2
    iput-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    .line 305
    return-void
.end method

.method protected greylist-max-o onData(Landroid/media/SubtitleData;)V
    .locals 6
    .param p1, "data"    # Landroid/media/SubtitleData;

    .line 82
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 83
    .local v0, "runID":J
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    .line 84
    nop

    .line 86
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 84
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/SubtitleTrack;->setRunDiscardTimeMs(JJ)V

    .line 87
    return-void
.end method

.method public abstract greylist-max-o onData([BZJ)V
.end method

.method public greylist-max-o onSeek(J)V
    .locals 3
    .param p1, "timeUs"    # J

    .line 245
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    monitor-enter p0

    .line 247
    const-wide/16 v0, 0x3e8

    :try_start_0
    div-long v0, p1, v0

    .line 248
    .local v0, "timeMs":J
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 249
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V

    .line 250
    .end local v0    # "timeMs":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 252
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    .line 253
    return-void

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o onStop()V
    .locals 3

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubtitleTrack"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 263
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 264
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 266
    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 267
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v2, :cond_1

    .line 268
    invoke-interface {v2, v0, v1, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 270
    :cond_1
    return-void

    .line 264
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o onTimedEvent(J)V
    .locals 3
    .param p1, "timeUs"    # J

    .line 230
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimedEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    monitor-enter p0

    .line 232
    const-wide/16 v0, 0x3e8

    :try_start_0
    div-long v0, p1, v0

    .line 233
    .local v0, "timeMs":J
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 234
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V

    .line 235
    .end local v0    # "timeMs":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 237
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    .line 238
    return-void

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected greylist-max-o scheduleTimedEvents()V
    .locals 5

    .line 215
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v0, v1, v2}, Landroid/media/SubtitleTrack$CueList;->nextTimeAfter(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 217
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sched @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 219
    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 220
    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    .line 218
    :goto_0
    invoke-interface {v0, v1, v2, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 223
    :cond_2
    return-void
.end method

.method public greylist-max-o setRunDiscardTimeMs(JJ)V
    .locals 2
    .param p1, "runID"    # J
    .param p3, "timeMs"    # J

    .line 607
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 609
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_0

    .line 610
    iput-wide p3, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 611
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    .line 614
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_0
    return-void
.end method

.method public declared-synchronized greylist-max-o setTimeProvider(Landroid/media/MediaTimeProvider;)V
    .locals 1
    .param p1, "timeProvider"    # Landroid/media/MediaTimeProvider;

    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 385
    monitor-exit p0

    return-void

    .line 387
    :cond_0
    if-eqz v0, :cond_1

    .line 388
    :try_start_1
    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 390
    .end local p0    # "this":Landroid/media/SubtitleTrack;
    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 391
    if-eqz p1, :cond_2

    .line 392
    invoke-interface {p1, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    :cond_2
    monitor-exit p0

    return-void

    .line 383
    .end local p1    # "timeProvider":Landroid/media/MediaTimeProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o show()V
    .locals 2

    .line 277
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v0, :cond_0

    .line 278
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    .line 282
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    .line 283
    .local v1, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    if-eqz v1, :cond_1

    .line 284
    invoke-interface {v1, v0}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 286
    :cond_1
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_2

    .line 287
    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 289
    :cond_2
    return-void
.end method

.method protected declared-synchronized greylist-max-o updateActiveCues(ZJ)V
    .locals 7
    .param p1, "rebuild"    # Z
    .param p2, "timeMs"    # J

    monitor-enter p0

    .line 133
    if-nez p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_1

    .line 134
    .end local p0    # "this":Landroid/media/SubtitleTrack;
    :cond_0
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 137
    :cond_1
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    .line 138
    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/media/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 140
    .local v1, "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/SubtitleTrack$Cue;

    .line 142
    .local v2, "cue":Landroid/media/SubtitleTrack$Cue;
    iget-wide v3, v2, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 144
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-wide v3, v2, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 149
    :cond_3
    iget-wide v3, v2, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 152
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_4
    iget-object v3, v2, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_5

    .line 154
    invoke-virtual {v2, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    .line 156
    :cond_5
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_6
    iget-object v3, v2, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_7

    .line 159
    invoke-virtual {v2, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    .line 161
    .end local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    .end local v2    # "cue":Landroid/media/SubtitleTrack$Cue;
    :cond_7
    :goto_1
    goto/16 :goto_0

    .line 164
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :cond_8
    :goto_2
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-gtz v0, :cond_9

    .line 166
    invoke-direct {p0, v1}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    goto :goto_2

    .line 168
    :cond_9
    iput-wide p2, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 132
    .end local p1    # "rebuild":Z
    .end local p2    # "timeMs":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract greylist-max-o updateView(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation
.end method
