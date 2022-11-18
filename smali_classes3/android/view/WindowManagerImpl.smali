.class public final Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    }
.end annotation


# instance fields
.field public final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDefaultToken:Landroid/os/IBinder;

.field private final greylist mGlobal:Landroid/view/WindowManagerGlobal;

.field private final blacklist mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mParentWindow:Landroid/view/Window;

.field private final blacklist mWindowContextToken:Landroid/os/IBinder;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    .line 112
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentWindow"    # Landroid/view/Window;
    .param p3, "windowContextToken"    # Landroid/os/IBinder;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    nop

    .line 87
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    .line 116
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    .line 118
    iput-object p3, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    .line 119
    return-void
.end method

.method private blacklist applyTokens(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 159
    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 162
    move-object v0, p1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 163
    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v1}, Landroid/view/WindowManagerImpl;->assertWindowContextTypeMatches(I)V

    .line 165
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 168
    :cond_0
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 169
    return-void

    .line 160
    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertWindowContextTypeMatches(I)V
    .locals 4
    .param p1, "windowType"    # I

    .line 172
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/window/WindowProvider;

    if-nez v1, :cond_0

    .line 173
    return-void

    .line 177
    :cond_0
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_1

    .line 178
    return-void

    .line 180
    :cond_1
    check-cast v0, Landroid/window/WindowProvider;

    .line 181
    .local v0, "windowProvider":Landroid/window/WindowProvider;
    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowType()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 182
    return-void

    .line 184
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type mismatch. Window Context\'s window type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", while LayoutParams\' type is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Please create another Window Context via createWindowContext(getDisplay(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", null) to add window with type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "exception":Ljava/lang/IllegalArgumentException;
    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/window/WindowProviderService;->isWindowProviderService(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    const-string v2, "WindowContext\'s window type must match type in WindowManager.LayoutParams"

    invoke-static {v2, v1}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    return-void

    .line 191
    :cond_3
    throw v1
.end method

.method private blacklist computeWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 315
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 316
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 317
    .local v1, "context":Landroid/content/Context;
    :goto_0
    invoke-static {v1}, Landroid/content/Context;->getToken(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 318
    invoke-direct {p0, v0, p1}, Landroid/view/WindowManagerImpl;->getWindowInsetsFromServerForCurrentDisplay(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    .line 132
    .local v0, "clientToken":Landroid/os/IBinder;
    new-instance v1, Landroid/view/WindowManagerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v1
.end method

.method private static blacklist getCurrentBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 294
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    .line 295
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getMaximumBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 308
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getWindowInsetsFromServerForCurrentDisplay(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 323
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 324
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 325
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v2

    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 324
    invoke-static {v1, p1, p2, v2, v3}, Landroid/view/WindowManagerImpl;->getWindowInsetsFromServerForDisplay(ILandroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getWindowInsetsFromServerForDisplay(ILandroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .locals 14
    .param p0, "displayId"    # I
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isScreenRound"    # Z
    .param p4, "windowingMode"    # I

    move-object v1, p1

    .line 342
    :try_start_0
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 343
    .local v0, "insetsState":Landroid/view/InsetsState;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    move v13, p0

    :try_start_1
    invoke-interface {v2, p1, p0, v0}, Landroid/view/IWindowManager;->getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z

    move-result v6

    .line 345
    .local v6, "alwaysConsumeSystemBars":Z
    const/4 v4, 0x0

    const/16 v7, 0x30

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v9, 0x0

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x0

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v5, p3

    move/from16 v11, p4

    invoke-virtual/range {v2 .. v12}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 349
    .end local v0    # "insetsState":Landroid/view/InsetsState;
    .end local v6    # "alwaysConsumeSystemBars":Z
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v13, p0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 417
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/CrossWindowBlurListeners;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 418
    return-void
.end method

.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 411
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/view/WindowManagerImpl;->addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 412
    return-void
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 147
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyTokens(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 148
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V

    .line 150
    return-void
.end method

.method public greylist-max-o createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .locals 3
    .param p1, "parentWindow"    # Landroid/view/Window;

    .line 122
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public greylist-max-o createPresentationWindowManager(Landroid/content/Context;)Landroid/view/WindowManagerImpl;
    .locals 3
    .param p1, "displayContext"    # Landroid/content/Context;

    .line 126
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    invoke-direct {v0, p1, v1, v2}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public whitelist getCurrentImeTouchRegion()Landroid/graphics/Region;
    .locals 1

    .line 235
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .locals 4

    .line 287
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 288
    .local v0, "context":Landroid/content/Context;
    :goto_0
    invoke-static {v0}, Landroid/view/WindowManagerImpl;->getCurrentBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 290
    .local v1, "bounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/view/WindowMetrics;

    invoke-direct {p0, v1}, Landroid/view/WindowManagerImpl;->computeWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    return-object v2
.end method

.method public whitelist getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayImePolicy(I)I
    .locals 1
    .param p1, "displayId"    # I

    .line 279
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getDisplayImePolicy(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .locals 4

    .line 301
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 302
    .local v0, "context":Landroid/content/Context;
    :goto_0
    invoke-static {v0}, Landroid/view/WindowManagerImpl;->getMaximumBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 304
    .local v1, "maxBounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/view/WindowMetrics;

    invoke-direct {p0, v1}, Landroid/view/WindowManagerImpl;->computeWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    return-object v2
.end method

.method public blacklist getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .locals 13
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    .line 359
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->getPossibleDisplayInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .local v0, "possibleDisplayInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    nop

    .line 365
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 368
    .local v1, "maxMetrics":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/WindowMetrics;>;"
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 369
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 370
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/DisplayInfo;

    .line 373
    .local v4, "currentDisplayInfo":Landroid/view/DisplayInfo;
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 377
    .local v5, "maxBounds":Landroid/graphics/Rect;
    iget v6, v4, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v8

    .line 380
    .local v6, "isScreenRound":Z
    :goto_1
    iget v9, v4, Landroid/view/DisplayInfo;->displayId:I

    new-instance v10, Landroid/graphics/Rect;

    .line 382
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v11

    .line 383
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v12

    invoke-direct {v10, v8, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 380
    invoke-static {v9, v2, v10, v6, v7}, Landroid/view/WindowManagerImpl;->getWindowInsetsFromServerForDisplay(ILandroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v7

    .line 386
    .local v7, "windowInsets":Landroid/view/WindowInsets;
    new-instance v8, Landroid/view/WindowInsets$Builder;

    invoke-direct {v8, v7}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    iget-object v9, v4, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v8, v9}, Landroid/view/WindowInsets$Builder;->setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;

    move-result-object v8

    iget-object v9, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 388
    invoke-virtual {v8, v9}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v7

    .line 390
    new-instance v8, Landroid/view/WindowMetrics;

    invoke-direct {v8, v5, v7}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v5    # "maxBounds":Landroid/graphics/Rect;
    .end local v6    # "isScreenRound":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    .end local v3    # "i":I
    .end local v4    # "currentDisplayInfo":Landroid/view/DisplayInfo;
    .end local v7    # "windowInsets":Landroid/view/WindowInsets;
    :cond_1
    return-object v1

    .line 361
    .end local v0    # "possibleDisplayInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    .end local v1    # "maxMetrics":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/WindowMetrics;>;"
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I

    .line 398
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    nop

    .line 402
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isCrossWindowBlurEnabled()Z
    .locals 1

    .line 406
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/CrossWindowBlurListeners;->isCrossWindowBlurEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isTaskSnapshotSupported()Z
    .locals 1

    .line 428
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isTaskSnapshotSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 429
    :catch_0
    move-exception v0

    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerTaskFpsCallback(ILjava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/window/TaskFpsCallback;

    .line 437
    new-instance v0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy-IA;)V

    .line 440
    .local v0, "onFpsCallbackListenerProxy":Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    nop

    .line 445
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    monitor-enter v1

    .line 446
    :try_start_1
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    monitor-exit v1

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 422
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/CrossWindowBlurListeners;->removeListener(Ljava/util/function/Consumer;)V

    .line 423
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 201
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 202
    return-void
.end method

.method public whitelist removeViewImmediate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 206
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 207
    return-void
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .locals 2
    .param p1, "receiver"    # Landroid/view/WindowManager$KeyboardShortcutsReceiver;
    .param p2, "deviceId"    # I

    .line 212
    new-instance v0, Landroid/view/WindowManagerImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/view/WindowManagerImpl$1;-><init>(Landroid/view/WindowManagerImpl;Landroid/view/WindowManager$KeyboardShortcutsReceiver;)V

    .line 221
    .local v0, "resultReceiver":Lcom/android/internal/os/IResultReceiver;
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 222
    invoke-interface {v1, v0, p2}, Landroid/view/IWindowManager;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 225
    :goto_0
    return-void
.end method

.method public greylist-max-o setDefaultToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 142
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    .line 143
    return-void
.end method

.method public blacklist setDisplayImePolicy(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "imePolicy"    # I

    .line 271
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setDisplayImePolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 274
    :goto_0
    return-void
.end method

.method public blacklist setShouldShowSystemDecors(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "shouldShow"    # Z

    .line 253
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 254
    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setShouldShowSystemDecors(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 257
    :goto_0
    return-void
.end method

.method public blacklist setShouldShowWithInsecureKeyguard(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "shouldShow"    # Z

    .line 244
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 245
    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setShouldShowWithInsecureKeyguard(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 248
    :goto_0
    return-void
.end method

.method public blacklist shouldShowSystemDecors(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 262
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->shouldShowSystemDecors(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 263
    :catch_0
    move-exception v0

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist snapshotTaskForRecents(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "taskId"    # I

    .line 491
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 495
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist unregisterTaskFpsCallback(Landroid/window/TaskFpsCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/window/TaskFpsCallback;

    .line 452
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 455
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

    .line 457
    .local v2, "proxy":Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    invoke-static {v2}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->-$$Nest$fgetmCallback(Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;)Landroid/window/TaskFpsCallback;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 459
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 460
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    nop

    .line 464
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 461
    :catch_0
    move-exception v3

    .line 462
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/view/WindowManagerImpl;
    .end local p1    # "callback":Landroid/window/TaskFpsCallback;
    throw v4

    .line 466
    .end local v2    # "proxy":Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/WindowManagerImpl;
    .restart local p1    # "callback":Landroid/window/TaskFpsCallback;
    :cond_0
    :goto_1
    goto :goto_0

    .line 467
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;>;"
    :cond_1
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 154
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyTokens(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method
