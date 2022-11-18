.class public abstract Landroid/app/job/JobScheduler;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobScheduler$Result;
    }
.end annotation


# static fields
.field public static final whitelist RESULT_FAILURE:I = 0x0

.field public static final whitelist RESULT_SUCCESS:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist cancel(I)V
.end method

.method public abstract whitelist cancelAll()V
.end method

.method public abstract whitelist enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
.end method

.method public abstract blacklist getAllJobSnapshots()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getAllPendingJobs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getPendingJob(I)Landroid/app/job/JobInfo;
.end method

.method public abstract blacklist getStartedJobs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist schedule(Landroid/app/job/JobInfo;)I
.end method

.method public abstract whitelist scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method
