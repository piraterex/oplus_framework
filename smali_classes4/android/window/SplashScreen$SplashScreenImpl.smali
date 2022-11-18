.class public Landroid/window/SplashScreen$SplashScreenImpl;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Landroid/window/SplashScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashScreenImpl"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SplashScreenImpl"


# instance fields
.field private final blacklist mActivityToken:Landroid/os/IBinder;

.field private blacklist mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

.field private final blacklist mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityToken(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExitAnimationListener(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/window/SplashScreen$OnExitAnimationListener;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    .line 144
    invoke-static {}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->getInstance()Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist clearOnExitAnimationListener()V
    .locals 2

    .line 164
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$fgetmGlobalLock(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 169
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    .line 170
    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v1, p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$mremoveImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setOnExitAnimationListener(Landroid/window/SplashScreen$OnExitAnimationListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/window/SplashScreen$OnExitAnimationListener;

    .line 150
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$fgetmGlobalLock(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 155
    if-eqz p1, :cond_1

    .line 156
    :try_start_0
    iput-object p1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    .line 157
    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v1, p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$maddImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V

    .line 159
    :cond_1
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setSplashScreenTheme(I)V
    .locals 6
    .param p1, "themeId"    # I

    .line 175
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    const-string v1, "SplashScreenImpl"

    if-nez v0, :cond_0

    .line 176
    const-string v0, "Couldn\'t persist the starting theme. This instance is not an Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 180
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    .line 182
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 183
    return-void

    .line 185
    :cond_1
    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 189
    .local v2, "themeName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 190
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v0}, Landroid/app/Activity;->getUserId()I

    move-result v5

    .line 189
    invoke-interface {v3, v4, v2, v5}, Landroid/content/pm/IPackageManager;->setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_1

    .line 192
    :catch_0
    move-exception v3

    .line 193
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Couldn\'t persist the starting theme"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
