.class public Landroid/app/ActivityClient;
.super Ljava/lang/Object;
.source "ActivityClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityClient$ActivityClientControllerSingleton;
    }
.end annotation


# static fields
.field private static final blacklist INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/ActivityClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 567
    new-instance v0, Landroid/app/ActivityClient$1;

    invoke-direct {v0}, Landroid/app/ActivityClient$1;-><init>()V

    sput-object v0, Landroid/app/ActivityClient;->sInstance:Landroid/util/Singleton;

    .line 574
    new-instance v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;-><init>(Landroid/app/ActivityClient$ActivityClientControllerSingleton-IA;)V

    sput-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityClient-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityClient;-><init>()V

    return-void
.end method

.method private static blacklist getActivityClientController()Landroid/app/IActivityClientController;
    .locals 2

    .line 563
    sget-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    iget-object v1, v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->mKnownInstance:Landroid/app/IActivityClientController;

    .line 564
    .local v1, "controller":Landroid/app/IActivityClientController;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityClientController;

    :goto_0
    return-object v0
.end method

.method public static blacklist getInstance()Landroid/app/ActivityClient;
    .locals 1

    .line 548
    sget-object v0, Landroid/app/ActivityClient;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityClient;

    return-object v0
.end method

.method public static blacklist setActivityClientController(Landroid/app/IActivityClientController;)Landroid/app/IActivityClientController;
    .locals 1
    .param p0, "activityClientController"    # Landroid/app/IActivityClientController;

    .line 559
    sget-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    iput-object p0, v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->mKnownInstance:Landroid/app/IActivityClientController;

    return-object p0
.end method


# virtual methods
.method public blacklist activityDestroyed(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 95
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "stopProfiling"    # Z

    .line 45
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 49
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist activityLocalRelaunch(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 104
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityLocalRelaunch(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist activityPaused(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 75
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist activityRelaunched(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 113
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityRelaunched(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist activityResumed(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "handleSplashScreenExit"    # Z

    .line 54
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->activityResumed(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .line 85
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityClientController;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist activityTopResumedStateLost()V
    .locals 1

    .line 66
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityClientController;->activityTopResumedStateLost()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist convertFromTranslucent(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 282
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 290
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 484
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 322
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "finishTask"    # I

    .line 164
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityClientController;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist finishActivityAffinity(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 173
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 181
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 226
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 234
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 242
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDisplayId(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 205
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getDisplayId(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 258
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 250
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 274
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z

    .line 213
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "homeToken"    # Landroid/os/IBinder;

    .line 475
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 479
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist isImmersive(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 306
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 394
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isTopOfTask(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 189
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z

    .line 129
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .line 146
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityClientController;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/IRequestFinishCallback;

    .line 508
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 512
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I
    .param p5, "backgroundColor"    # I

    .line 451
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 456
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 492
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 496
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist releaseActivityInstance(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 155
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "restoredFromBundle"    # Z

    .line 298
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sizeConfigurations"    # Landroid/window/SizeConfigurationBuckets;

    .line 121
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist reportSplashScreenAttached(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 519
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->splashScreenAttached(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist requestCompatCameraControl(Landroid/content/res/Resources;Landroid/os/IBinder;ZZLandroid/app/ICompatCameraControlCallback;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "showControl"    # Z
    .param p4, "transformationApplied"    # Z
    .param p5, "callback"    # Landroid/app/ICompatCameraControlCallback;

    .line 535
    const v0, 0x111016c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 540
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/app/IActivityClientController;->requestCompatCameraControl(Landroid/os/IBinder;ZZLandroid/app/ICompatCameraControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 545
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist setImmersive(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immersive"    # Z

    .line 314
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setImmersive(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "inheritShowWhenLocked"    # Z

    .line 426
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 430
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 330
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 334
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z

    .line 460
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 464
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I

    .line 266
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "shouldDockBigOverlays"    # Z

    .line 338
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist setShowWhenLocked(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWhenLocked"    # Z

    .line 418
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 422
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 378
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 382
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist setTurnScreenOn(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "turnScreenOn"    # Z

    .line 434
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setTurnScreenOn(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "packageName"    # Landroid/content/ComponentName;

    .line 442
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 137
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 386
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 370
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 374
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 402
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 406
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist startLockTaskModeByToken(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 354
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->startLockTaskModeByToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 358
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "callingActivity"    # Landroid/os/IBinder;

    .line 410
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 362
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->stopLockTaskModeByToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 366
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 346
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist unregisterRemoteAnimations(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 500
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->unregisterRemoteAnimations(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 504
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 197
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
