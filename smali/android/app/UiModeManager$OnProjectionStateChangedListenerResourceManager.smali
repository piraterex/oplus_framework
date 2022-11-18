.class Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnProjectionStateChangedListenerResourceManager"
.end annotation


# instance fields
.field private final blacklist mExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$InnerListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOuterListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$InnerListener;",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1047
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    .line 1049
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getExecutor(Landroid/app/UiModeManager$InnerListener;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p1, "innerListener"    # Landroid/app/UiModeManager$InnerListener;

    .line 1067
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method blacklist getOuterListener(Landroid/app/UiModeManager$InnerListener;)Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .locals 1
    .param p1, "innerListener"    # Landroid/app/UiModeManager$InnerListener;

    .line 1063
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    return-object v0
.end method

.method blacklist put(Landroid/app/UiModeManager$InnerListener;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .locals 1
    .param p1, "innerListener"    # Landroid/app/UiModeManager$InnerListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "outerListener"    # Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    .line 1053
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    return-void
.end method

.method blacklist remove(Landroid/app/UiModeManager$InnerListener;)V
    .locals 1
    .param p1, "innerListener"    # Landroid/app/UiModeManager$InnerListener;

    .line 1058
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    return-void
.end method
