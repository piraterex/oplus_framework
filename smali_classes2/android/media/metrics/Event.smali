.class public abstract Landroid/media/metrics/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field blacklist mMetricsBundle:Landroid/os/Bundle;

.field final blacklist mTimeSinceCreatedMillis:J


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/Event;->mMetricsBundle:Landroid/os/Bundle;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/Event;->mTimeSinceCreatedMillis:J

    .line 33
    return-void
.end method

.method constructor blacklist <init>(JLandroid/os/Bundle;)V
    .locals 1
    .param p1, "timeSinceCreatedMillis"    # J
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/Event;->mMetricsBundle:Landroid/os/Bundle;

    .line 36
    iput-wide p1, p0, Landroid/media/metrics/Event;->mTimeSinceCreatedMillis:J

    .line 37
    iput-object p3, p0, Landroid/media/metrics/Event;->mMetricsBundle:Landroid/os/Bundle;

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/media/metrics/Event;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTimeSinceCreatedMillis()J
    .locals 2

    .line 49
    iget-wide v0, p0, Landroid/media/metrics/Event;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method
