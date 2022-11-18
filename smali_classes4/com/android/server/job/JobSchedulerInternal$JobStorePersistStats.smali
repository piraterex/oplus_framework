.class public Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
.super Ljava/lang/Object;
.source "JobSchedulerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JobStorePersistStats"
.end annotation


# instance fields
.field public blacklist countAllJobsLoaded:I

.field public blacklist countAllJobsSaved:I

.field public blacklist countSystemServerJobsLoaded:I

.field public blacklist countSystemServerJobsSaved:I

.field public blacklist countSystemSyncManagerJobsLoaded:I

.field public blacklist countSystemSyncManagerJobsSaved:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 68
    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 69
    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 71
    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 72
    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 73
    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 68
    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 69
    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 71
    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 72
    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 73
    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 79
    iget v0, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 80
    iget v0, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 81
    iget v0, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 83
    iget v0, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 84
    iget v0, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 85
    iget v0, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 86
    return-void
.end method


# virtual methods
.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 104
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 106
    .local v2, "token":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 107
    .local v4, "flToken":J
    iget v6, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 108
    iget v6, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    const-wide v9, 0x10500000002L

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 110
    iget v6, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 112
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 114
    const-wide v13, 0x10b00000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 115
    .local v13, "lsToken":J
    iget v6, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 116
    iget v6, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 118
    iget v6, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 120
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 123
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirstLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " LastSave: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
