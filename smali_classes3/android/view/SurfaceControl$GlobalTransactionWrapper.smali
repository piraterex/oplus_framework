.class Landroid/view/SurfaceControl$GlobalTransactionWrapper;
.super Landroid/view/SurfaceControl$Transaction;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalTransactionWrapper"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 4322
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControl$GlobalTransactionWrapper-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .line 4331
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Global transaction must be applied from closeTransaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist applyGlobalTransaction(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .line 4324
    invoke-virtual {p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->applyResizedSurfaces()V

    .line 4325
    invoke-virtual {p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->notifyReparentedSurfaces()V

    .line 4326
    iget-wide v0, p0, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeApplyTransaction(JZ)V

    .line 4327
    return-void
.end method
