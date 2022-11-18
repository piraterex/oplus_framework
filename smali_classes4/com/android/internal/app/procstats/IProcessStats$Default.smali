.class public Lcom/android/internal/app/procstats/IProcessStats$Default;
.super Ljava/lang/Object;
.source "IProcessStats.java"

# interfaces
.implements Lcom/android/internal/app/procstats/IProcessStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/IProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCommittedStats(JIZLjava/util/List;)J
    .locals 2
    .param p1, "highWaterMarkMs"    # J
    .param p3, "section"    # I
    .param p4, "doAggregate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J
    .locals 2
    .param p1, "highWaterMarkMs"    # J
    .param p3, "section"    # I
    .param p4, "doAggregate"    # Z
    .param p6, "mergedStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getCurrentMemoryState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCurrentStats(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMinAssociationDumpDuration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "minTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method
