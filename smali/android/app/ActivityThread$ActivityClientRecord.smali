.class public final Landroid/app/ActivityThread$ActivityClientRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityClientRecord"
.end annotation


# instance fields
.field greylist activity:Landroid/app/Activity;

.field blacklist activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field greylist activityInfo:Landroid/content/pm/ActivityInfo;

.field public blacklist assistToken:Landroid/os/IBinder;

.field greylist compatInfo:Landroid/content/res/CompatibilityInfo;

.field greylist-max-o createdConfig:Landroid/content/res/Configuration;

.field greylist-max-o embeddedID:Ljava/lang/String;

.field greylist-max-o hideForNow:Z

.field greylist-max-o ident:I

.field greylist intent:Landroid/content/Intent;

.field public final greylist-max-o isForward:Z

.field blacklist isTopResumedActivity:Z

.field greylist-max-o lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field blacklist lastReportedTopResumedState:Z

.field blacklist mActivityOptions:Landroid/app/ActivityOptions;

.field public blacklist mInitialTaskFragmentToken:Landroid/os/IBinder;

.field blacklist mIsUserLeaving:Z

.field blacklist mLaunchedFromBubble:Z

.field private greylist-max-o mLifecycleState:I

.field greylist-max-o mPendingRemoveWindow:Landroid/view/Window;

.field greylist-max-o mPendingRemoveWindowManager:Landroid/view/WindowManager;

.field greylist mPreserveWindow:Z

.field private blacklist mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

.field greylist-max-o nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

.field greylist-max-o overrideConfig:Landroid/content/res/Configuration;

.field public greylist packageInfo:Landroid/app/LoadedApk;

.field greylist-max-o parent:Landroid/app/Activity;

.field greylist paused:Z

.field greylist-max-o pendingConfigChanges:I

.field greylist-max-o pendingIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o pendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o persistentState:Landroid/os/PersistableBundle;

.field greylist-max-o profilerInfo:Landroid/app/ProfilerInfo;

.field greylist-max-o referrer:Ljava/lang/String;

.field public blacklist shareableActivityToken:Landroid/os/IBinder;

.field greylist-max-o startsNotResumed:Z

.field greylist-max-o state:Landroid/os/Bundle;

.field greylist stopped:Z

.field private greylist-max-o tmpConfig:Landroid/content/res/Configuration;

.field public greylist token:Landroid/os/IBinder;

.field greylist-max-o voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field greylist-max-o window:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SizeConfigurationBuckets;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPreP(Landroid/app/ActivityThread$ActivityClientRecord;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreP()Z

    move-result p0

    return p0
.end method

.method public constructor greylist-max-p <init>()V
    .locals 1

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    .line 626
    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 627
    invoke-direct {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->init()V

    .line 628
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions;ZLandroid/app/ProfilerInfo;Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/os/IBinder;ZLandroid/os/IBinder;)V
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ident"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p7, "referrer"    # Ljava/lang/String;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "state"    # Landroid/os/Bundle;
    .param p10, "persistentState"    # Landroid/os/PersistableBundle;
    .param p13, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p14, "isForward"    # Z
    .param p15, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p16, "client"    # Landroid/app/ClientTransactionHandler;
    .param p17, "assistToken"    # Landroid/os/IBinder;
    .param p18, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p19, "launchedFromBubble"    # Z
    .param p20, "initialTaskFragmentToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/content/Intent;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/ActivityOptions;",
            "Z",
            "Landroid/app/ProfilerInfo;",
            "Landroid/app/ClientTransactionHandler;",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            "Z",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 637
    .local p11, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p12, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    .line 618
    const/4 v3, 0x0

    iput v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    .line 638
    move-object/from16 v3, p1

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 639
    move-object/from16 v4, p17

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    .line 640
    move-object/from16 v5, p18

    iput-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;

    .line 641
    move/from16 v6, p3

    iput v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 642
    move-object/from16 v7, p2

    iput-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 643
    move-object/from16 v8, p7

    iput-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    .line 644
    move-object/from16 v9, p8

    iput-object v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 645
    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 646
    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 647
    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 648
    move-object/from16 v11, p10

    iput-object v11, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 649
    move-object/from16 v12, p11

    iput-object v12, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 650
    move-object/from16 v13, p12

    iput-object v13, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 651
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 652
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 653
    move-object/from16 v3, p5

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 654
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v1, p16

    invoke-virtual {v1, v3, v2}, Landroid/app/ClientTransactionHandler;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 656
    move-object/from16 v3, p13

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 657
    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLaunchedFromBubble:Z

    .line 658
    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mInitialTaskFragmentToken:Landroid/os/IBinder;

    .line 659
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$ActivityClientRecord;->init()V

    .line 660
    return-void
.end method

.method private greylist-max-o init()V
    .locals 2

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 665
    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 666
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 667
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 668
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 669
    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 670
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord$1;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$ActivityClientRecord$1;-><init>(Landroid/app/ActivityThread$ActivityClientRecord;)V

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 695
    return-void
.end method

.method private greylist-max-o isPreHoneycomb()Z
    .locals 2

    .line 730
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isPreP()Z
    .locals 2

    .line 735
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public greylist-max-o getLifecycleState()I
    .locals 1

    .line 699
    iget v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    return v0
.end method

.method public greylist-max-o getStateString()Ljava/lang/String;
    .locals 5

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ActivityClientRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const-string/jumbo v1, "paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 760
    const-string v1, ", stopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 761
    const-string v2, ", hideForNow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 762
    const-string v2, ", startsNotResumed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 763
    const-string v2, ", isForward="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 764
    const-string v2, ", pendingConfigChanges="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    const-string v2, ", preserveWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 766
    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "}"

    if-eqz v2, :cond_0

    .line 767
    const-string v2, ", Activity{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string/jumbo v2, "resumed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 770
    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 771
    const-string v1, ", destroyed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 772
    const-string v1, ", startedActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mStartedActivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 773
    const-string v1, ", changingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o isPersistable()Z
    .locals 2

    .line 740
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isVisibleFromServer()Z
    .locals 1

    .line 744
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o setState(I)V
    .locals 2
    .param p1, "newLifecycleState"    # I

    .line 704
    iput p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    .line 705
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 723
    :pswitch_0
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 724
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0

    .line 719
    :pswitch_1
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 720
    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 721
    goto :goto_0

    .line 715
    :pswitch_2
    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 716
    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 717
    goto :goto_0

    .line 711
    :pswitch_3
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 712
    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 713
    goto :goto_0

    .line 707
    :pswitch_4
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 708
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 709
    nop

    .line 727
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 748
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 749
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityRecord{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 750
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    if-nez v0, :cond_1

    .line 752
    const-string/jumbo v2, "no component name"

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    return-object v1
.end method
