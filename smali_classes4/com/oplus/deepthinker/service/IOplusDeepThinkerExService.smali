.class public interface abstract Lcom/oplus/deepthinker/service/IOplusDeepThinkerExService;
.super Ljava/lang/Object;
.source "IOplusDeepThinkerExService.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Lcom/oplus/deepthinker/service/IOplusDeepThinkerExService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/oplus/deepthinker/service/IOplusDeepThinkerExService$1;

    invoke-direct {v0}, Lcom/oplus/deepthinker/service/IOplusDeepThinkerExService$1;-><init>()V

    sput-object v0, Lcom/oplus/deepthinker/service/IOplusDeepThinkerExService;->DEFAULT:Lcom/oplus/deepthinker/service/IOplusDeepThinkerExService;

    return-void
.end method


# virtual methods
.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 40
    sget-object v0, Lcom/oplus/deepthinker/service/IOplusDeepThinkerExService;->DEFAULT:Lcom/oplus/deepthinker/service/IOplusDeepThinkerExService;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 35
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusDeepThinkerExService:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist onDeliverAlarm(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0
    .param p1, "bs"    # Ljava/lang/Object;
    .param p2, "alarm"    # Ljava/lang/Object;
    .param p3, "nowElapsed"    # J

    .line 57
    return-void
.end method

.method public whitelist onHandleDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onReleaseWakelock(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "totalTime"    # J

    .line 54
    return-void
.end method

.method public whitelist onScheduleJob(Landroid/app/job/JobInfo;)V
    .locals 0
    .param p1, "job"    # Landroid/app/job/JobInfo;

    .line 51
    return-void
.end method

.method public whitelist onWakeFullnessChanged(I)V
    .locals 0
    .param p1, "wakefulness"    # I

    .line 48
    return-void
.end method
