.class public final Landroid/service/dreams/Sandman;
.super Ljava/lang/Object;
.source "Sandman.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Sandman"


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static greylist-max-o isScreenSaverActivatedOnDock(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 117
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 118
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string/jumbo v5, "screensaver_activate_on_dock"

    invoke-static {v3, v5, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private static greylist-max-o isScreenSaverEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 109
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 110
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string/jumbo v5, "screensaver_enabled"

    invoke-static {v3, v5, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static greylist-max-o shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 49
    nop

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 52
    .local v0, "somnambulatorComponent":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 53
    .local v1, "name":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static greylist-max-o startDream(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "docked"    # Z

    .line 79
    const-string v0, "Sandman"

    :try_start_0
    const-string v1, "dreams"

    .line 80
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    .line 81
    .local v1, "dreamManagerService":Landroid/service/dreams/IDreamManager;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    const-string v2, "Activating dream while docked."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-class v2, Landroid/os/PowerManager;

    .line 91
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 92
    .local v2, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const-string v6, "android.service.dreams:DREAM"

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 95
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    goto :goto_0

    .line 96
    :cond_0
    const-string v2, "Activating dream by user request."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "dreamManagerService":Landroid/service/dreams/IDreamManager;
    :cond_1
    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "Could not start dream when docked."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public static greylist-max-o startDreamByUserRequest(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method

.method public static greylist-max-o startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverActivatedOnDock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    .line 75
    return-void

    .line 70
    :cond_1
    :goto_0
    const-string v0, "Sandman"

    const-string v1, "Dreams currently disabled for docks."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
