.class final Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConsumeBatchedInputImmediatelyRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 9516
    iput-object p1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 9519
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 9520
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->doConsumeBatchedInput(J)Z

    .line 9521
    return-void
.end method
