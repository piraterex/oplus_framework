.class public abstract Landroid/app/HomeVisibilityListener;
.super Ljava/lang/Object;
.source "HomeVisibilityListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private blacklist mActivityManager:Landroid/app/ActivityManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field blacklist mIsHomeActivityVisible:Z

.field blacklist mObserver:Landroid/app/IProcessObserver$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/app/HomeVisibilityListener;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/app/HomeVisibilityListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misHomeActivityVisible(Landroid/app/HomeVisibilityListener;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;->isHomeActivityVisible()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/app/HomeVisibilityListener$1;

    invoke-direct {v0, p0}, Landroid/app/HomeVisibilityListener$1;-><init>(Landroid/app/HomeVisibilityListener;)V

    iput-object v0, p0, Landroid/app/HomeVisibilityListener;->mObserver:Landroid/app/IProcessObserver$Stub;

    .line 91
    return-void
.end method

.method private blacklist isHomeActivityVisible()Z
    .locals 5

    .line 94
    iget-object v0, p0, Landroid/app/HomeVisibilityListener;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "top":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 101
    return v1

    .line 105
    :cond_1
    iget-object v3, p0, Landroid/app/HomeVisibilityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .line 107
    .local v3, "defaultHomeComponent":Landroid/content/ComponentName;
    if-nez v3, :cond_2

    return v1

    .line 109
    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "defaultHomePackage":Ljava/lang/String;
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 96
    .end local v1    # "defaultHomePackage":Ljava/lang/String;
    .end local v2    # "top":Ljava/lang/String;
    .end local v3    # "defaultHomeComponent":Landroid/content/ComponentName;
    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method blacklist init(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/ActivityManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "activityManager"    # Landroid/app/ActivityManager;

    .line 52
    iput-object p1, p0, Landroid/app/HomeVisibilityListener;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Landroid/app/HomeVisibilityListener;->mActivityManager:Landroid/app/ActivityManager;

    .line 54
    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;->isHomeActivityVisible()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    .line 55
    iput-object p2, p0, Landroid/app/HomeVisibilityListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 56
    return-void
.end method

.method public abstract blacklist onHomeVisibilityChanged(Z)V
.end method
