.class Landroid/view/BatchedInputEventReceiver$1;
.super Ljava/lang/Object;
.source "BatchedInputEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/BatchedInputEventReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/view/BatchedInputEventReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/BatchedInputEventReceiver;

    .line 32
    iput-object p1, p0, Landroid/view/BatchedInputEventReceiver$1;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 35
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver$1;->this$0:Landroid/view/BatchedInputEventReceiver;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 36
    return-void
.end method
