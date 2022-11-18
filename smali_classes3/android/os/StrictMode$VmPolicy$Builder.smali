.class public final Landroid/os/StrictMode$VmPolicy$Builder;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode$VmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mClassInstanceLimit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mClassInstanceLimitNeedCow:Z

.field private greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListener:Landroid/os/StrictMode$OnVmViolationListener;

.field private greylist mMask:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 785
    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 786
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/StrictMode$VmPolicy;)V
    .locals 1
    .param p1, "base"    # Landroid/os/StrictMode$VmPolicy;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 790
    iget v0, p1, Landroid/os/StrictMode$VmPolicy;->mask:I

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 792
    iget-object v0, p1, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 793
    iget-object v0, p1, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    .line 794
    iget-object v0, p1, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 795
    return-void
.end method

.method private greylist-max-o enable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1
    .param p1, "mask"    # I

    .line 1192
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 1193
    return-object p0
.end method


# virtual methods
.method public whitelist build()Landroid/os/StrictMode$VmPolicy;
    .locals 7

    .line 1210
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    if-eqz v0, :cond_0

    const/high16 v1, 0x74000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1218
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1220
    :cond_0
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    iget v2, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 1222
    iget-object v1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetEMPTY_CLASS_LIMIT_MAP()Ljava/util/HashMap;

    move-result-object v1

    :goto_0
    move-object v3, v1

    iget-object v4, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    iget-object v5, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode$VmPolicy-IA;)V

    .line 1220
    return-object v0
.end method

.method public whitelist detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 823
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectAll()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 3

    .line 863
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 865
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 866
    .local v0, "targetSdk":I
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 867
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 868
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 870
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 871
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 873
    :cond_1
    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 874
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 876
    :cond_2
    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 879
    const/4 v1, 0x0

    const-string/jumbo v2, "persist.sys.strictmode.clear"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 880
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 883
    :cond_3
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    .line 884
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectContentUriWithoutPermission()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 885
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 887
    :cond_4
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    .line 888
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectCredentialProtectedWhileLocked()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 890
    :cond_5
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_6

    .line 891
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectIncorrectContextUse()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 893
    :cond_6
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_7

    .line 894
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectUnsafeIntentLaunch()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 900
    :cond_7
    return-object p0
.end method

.method public whitelist detectCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 968
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectContentUriWithoutPermission()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 984
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectCredentialProtectedWhileLocked()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1043
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 949
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectImplicitDirectBoot()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1022
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectIncorrectContextUse()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1062
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 922
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 930
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 911
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectNonSdkApiUsage()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 842
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectUnsafeIntentLaunch()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1112
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 999
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o disable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 2
    .param p1, "mask"    # I

    .line 1197
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 1198
    return-object p0
.end method

.method public whitelist penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1136
    const/high16 v0, 0x10000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDeathOnCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1145
    const/high16 v0, 0x1000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDeathOnFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1155
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1169
    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist penaltyListener(Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/os/StrictMode$OnVmViolationListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1188
    invoke-virtual {p0, p2, p1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyListener(Ljava/util/concurrent/Executor;Landroid/os/StrictMode$OnVmViolationListener;)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyListener(Ljava/util/concurrent/Executor;Landroid/os/StrictMode$OnVmViolationListener;)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/StrictMode$OnVmViolationListener;

    .line 1177
    if-eqz p1, :cond_0

    .line 1180
    iput-object p2, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    .line 1181
    iput-object p1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1182
    return-object p0

    .line 1178
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1160
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o permitActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 2

    .line 828
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 829
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsExpectedActivityInstanceCount()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 830
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 830
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist permitCredentialProtectedWhileLocked()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1048
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist permitImplicitDirectBoot()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1027
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist permitIncorrectContextUse()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1074
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitNonSdkApiUsage()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 852
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitUnsafeIntentLaunch()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1127
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o permitUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1004
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setClassInstanceLimit(Ljava/lang/Class;I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 2
    .param p1, "klass"    # Ljava/lang/Class;
    .param p2, "instanceLimit"    # I

    .line 802
    if-eqz p1, :cond_3

    .line 805
    iget-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 807
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 809
    return-object p0

    .line 811
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 812
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    goto :goto_0

    .line 813
    :cond_1
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 816
    :cond_2
    :goto_0
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 817
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    return-object p0

    .line 803
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "klass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
