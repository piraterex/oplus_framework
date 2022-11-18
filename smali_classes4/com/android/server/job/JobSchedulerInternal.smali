.class public interface abstract Lcom/android/server/job/JobSchedulerInternal;
.super Ljava/lang/Object;
.source "JobSchedulerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    }
.end annotation


# virtual methods
.method public abstract blacklist addBackingUpUid(I)V
.end method

.method public abstract blacklist cancelJobsForUid(IIILjava/lang/String;)V
.end method

.method public abstract blacklist clearAllBackingUpUids()V
.end method

.method public abstract blacklist getCloudMediaProviderPackage(I)Ljava/lang/String;
.end method

.method public abstract blacklist getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
.end method

.method public abstract blacklist getSystemScheduledPendingJobs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist removeBackingUpUid(I)V
.end method

.method public abstract blacklist reportAppUsage(Ljava/lang/String;I)V
.end method
