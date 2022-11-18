.class Lcom/android/internal/app/procstats/ProcessState$PssAggr;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PssAggr"
.end annotation


# instance fields
.field blacklist pss:J

.field blacklist samples:J


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 120
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    return-void
.end method


# virtual methods
.method blacklist add(JJ)V
    .locals 8
    .param p1, "newPss"    # J
    .param p3, "newSamples"    # J

    .line 123
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    long-to-double v4, v2

    mul-double/2addr v0, v4

    long-to-double v4, p1

    long-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-long v0, v0

    add-long v4, v2, p3

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 125
    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 126
    return-void
.end method
