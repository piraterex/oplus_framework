.class public Lcom/android/internal/jank/InteractionJankMonitor$Session;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mCujType:I

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mReason:I

.field private final blacklist mTimeStamp:J


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "cujType"    # I
    .param p2, "postfix"    # Ljava/lang/String;

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mReason:I

    .line 1019
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    .line 1020
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mTimeStamp:J

    .line 1021
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1022
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "J<%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1023
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string v1, "J<%s::%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mName:Ljava/lang/String;

    .line 1024
    return-void
.end method


# virtual methods
.method public blacklist getCuj()I
    .locals 1

    .line 1028
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPerfettoTrigger()Ljava/lang/String;
    .locals 4

    .line 1041
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    .line 1042
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1041
    const-string v2, "com.android.telemetry.interaction-jank-monitor-%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReason()I
    .locals 1

    .line 1058
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mReason:I

    return v0
.end method

.method public blacklist getStatsdInteractionType()I
    .locals 2

    .line 1032
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getTimeStamp()J
    .locals 2

    .line 1050
    iget-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mTimeStamp:J

    return-wide v0
.end method

.method public blacklist logToStatsd()Z
    .locals 2

    .line 1037
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getStatsdInteractionType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 1054
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mReason:I

    .line 1055
    return-void
.end method
