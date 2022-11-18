.class final Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;
.super Ljava/lang/Object;
.source "BatchedInputEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatchedInputRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/BatchedInputEventReceiver;


# direct methods
.method private constructor blacklist <init>(Landroid/view/BatchedInputEventReceiver;)V
    .locals 0

    .line 110
    iput-object p1, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 113
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-static {v0}, Landroid/view/BatchedInputEventReceiver;->-$$Nest$fgetmChoreographer(Landroid/view/BatchedInputEventReceiver;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/BatchedInputEventReceiver;->doConsumeBatchedInput(J)V

    .line 114
    return-void
.end method
