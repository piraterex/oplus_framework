.class public Landroid/window/DisplayAreaOrganizer;
.super Landroid/window/WindowOrganizer;
.source "DisplayAreaOrganizer.java"


# static fields
.field public static final blacklist FEATURE_DEFAULT_TASK_CONTAINER:I = 0x1

.field public static final blacklist FEATURE_FULLSCREEN_MAGNIFICATION:I = 0x5

.field public static final blacklist FEATURE_HIDE_DISPLAY_CUTOUT:I = 0x6

.field public static final blacklist FEATURE_IME:I = 0x8

.field public static final blacklist FEATURE_IME_PLACEHOLDER:I = 0x7

.field public static final blacklist FEATURE_ONE_HANDED:I = 0x3

.field public static final blacklist FEATURE_ROOT:I = 0x0

.field public static final blacklist FEATURE_RUNTIME_TASK_CONTAINER_FIRST:I = 0x4e22

.field public static final blacklist FEATURE_SYSTEM_FIRST:I = 0x0

.field public static final blacklist FEATURE_SYSTEM_LAST:I = 0x2710

.field public static final blacklist FEATURE_UNDEFINED:I = -0x1

.field public static final blacklist FEATURE_VENDOR_FIRST:I = 0x2711

.field public static final blacklist FEATURE_VENDOR_LAST:I = 0x4e21

.field public static final blacklist FEATURE_WINDOWED_MAGNIFICATION:I = 0x4

.field public static final blacklist FEATURE_WINDOW_TOKENS:I = 0x2

.field public static final blacklist KEY_ROOT_DISPLAY_AREA_ID:Ljava/lang/String; = "root_display_area_id"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/IDisplayAreaOrganizer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/DisplayAreaOrganizer;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/window/DisplayAreaOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 142
    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    .line 249
    new-instance v0, Landroid/window/DisplayAreaOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/DisplayAreaOrganizer$1;-><init>(Landroid/window/DisplayAreaOrganizer;)V

    iput-object v0, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    .line 143
    iput-object p1, p0, Landroid/window/DisplayAreaOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 144
    return-void
.end method

.method private blacklist getController()Landroid/window/IDisplayAreaOrganizerController;
    .locals 2

    .line 274
    :try_start_0
    invoke-static {}, Landroid/window/DisplayAreaOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist createTaskDisplayArea(IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "parentFeatureId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 211
    :try_start_0
    invoke-direct {p0}, Landroid/window/DisplayAreaOrganizer;->getController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/window/IDisplayAreaOrganizerController;->createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    .locals 2
    .param p1, "taskDisplayArea"    # Landroid/window/WindowContainerToken;

    .line 228
    :try_start_0
    invoke-direct {p0}, Landroid/window/DisplayAreaOrganizer;->getController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/IDisplayAreaOrganizerController;->deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    nop

    .line 232
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "displayAreaInfo"    # Landroid/window/DisplayAreaInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 240
    return-void
.end method

.method public blacklist onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    .locals 0
    .param p1, "displayAreaInfo"    # Landroid/window/DisplayAreaInfo;

    .line 247
    return-void
.end method

.method public blacklist onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    .locals 0
    .param p1, "displayAreaInfo"    # Landroid/window/DisplayAreaInfo;

    .line 242
    return-void
.end method

.method public blacklist registerOrganizer(I)Ljava/util/List;
    .locals 2
    .param p1, "displayAreaFeature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-direct {p0}, Landroid/window/DisplayAreaOrganizer;->getController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/IDisplayAreaOrganizerController;->registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterOrganizer()V
    .locals 2

    .line 180
    :try_start_0
    invoke-direct {p0}, Landroid/window/DisplayAreaOrganizer;->getController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0, v1}, Landroid/window/IDisplayAreaOrganizerController;->unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    nop

    .line 184
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
