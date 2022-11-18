.class final Landroid/app/StatusBarManager$RequestResultCallback;
.super Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;
.source "StatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RequestResultCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1442
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;-><init>()V

    .line 1443
    iput-object p1, p0, Landroid/app/StatusBarManager$RequestResultCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1444
    iput-object p2, p0, Landroid/app/StatusBarManager$RequestResultCallback;->mCallback:Ljava/util/function/Consumer;

    .line 1445
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onTileRequest$0$android-app-StatusBarManager$RequestResultCallback(I)V
    .locals 2
    .param p1, "userResponse"    # I

    .line 1449
    iget-object v0, p0, Landroid/app/StatusBarManager$RequestResultCallback;->mCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onTileRequest(I)V
    .locals 2
    .param p1, "userResponse"    # I

    .line 1449
    iget-object v0, p0, Landroid/app/StatusBarManager$RequestResultCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/StatusBarManager$RequestResultCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/StatusBarManager$RequestResultCallback$$ExternalSyntheticLambda0;-><init>(Landroid/app/StatusBarManager$RequestResultCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1450
    return-void
.end method
