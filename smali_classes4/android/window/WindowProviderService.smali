.class public abstract Landroid/window/WindowProviderService;
.super Landroid/app/Service;
.source "WindowProviderService.java"

# interfaces
.implements Landroid/window/WindowProvider;


# instance fields
.field private final blacklist mController:Landroid/window/WindowContextController;

.field private blacklist mInitialized:Z

.field private final blacklist mOptions:Landroid/os/Bundle;

.field private blacklist mWindowManager:Landroid/view/WindowManager;

.field private final blacklist mWindowToken:Landroid/window/WindowTokenClient;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    .line 54
    new-instance v1, Landroid/window/WindowContextController;

    invoke-direct {v1, v0}, Landroid/window/WindowContextController;-><init>(Landroid/window/WindowTokenClient;)V

    iput-object v1, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mOptions:Landroid/os/Bundle;

    .line 73
    const-string v1, "android.windowContext.isWindowProviderService"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method public static blacklist isWindowProviderService(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "windowContextOptions"    # Landroid/os/Bundle;

    .line 65
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 66
    return v0

    .line 68
    :cond_0
    const-string v1, "android.windowContext.isWindowProviderService"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .locals 4
    .param p1, "newBase"    # Landroid/content/Context;

    .line 158
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 159
    iget-boolean v0, p0, Landroid/window/WindowProviderService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, p0}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getWindowType()I

    move-result v1

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getDisplayId()I

    move-result v2

    .line 162
    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object v3

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContextController;->attachToDisplayArea(IILandroid/os/Bundle;)V

    .line 163
    invoke-static {p0}, Landroid/view/WindowManagerImpl;->createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowProviderService;->mWindowManager:Landroid/view/WindowManager;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowProviderService;->mInitialized:Z

    .line 166
    :cond_0
    return-void
.end method

.method public final blacklist attachToWindowToken(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 142
    iget-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0, p1}, Landroid/window/WindowContextController;->attachToWindowToken(Landroid/os/IBinder;)V

    .line 143
    return-void
.end method

.method public final blacklist createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;
    .locals 3
    .param p1, "mainThread"    # Landroid/app/ActivityThread;
    .param p2, "packageInfo"    # Landroid/app/LoadedApk;

    .line 149
    invoke-super {p0, p1, p2}, Landroid/app/Service;->createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;

    move-result-object v0

    .line 150
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 151
    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getInitialDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 152
    .local v1, "display":Landroid/view/Display;
    iget-object v2, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getInitialDisplayId()I
    .locals 1

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 173
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/window/WindowProviderService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 176
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindowContextOptions()Landroid/os/Bundle;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/window/WindowProviderService;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract blacklist getWindowType()I
.end method

.method public whitelist onDestroy()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 183
    iget-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0}, Landroid/window/WindowContextController;->detachIfNeeded()V

    .line 184
    return-void
.end method
