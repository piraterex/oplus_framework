.class Landroid/view/InsetsController$InternalAnimationControlListener$1;
.super Ljava/lang/ThreadLocal;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController$InternalAnimationControlListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/animation/AnimationHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InsetsController$InternalAnimationControlListener;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/InsetsController$InternalAnimationControlListener;

    .line 350
    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist initialValue()Landroid/animation/AnimationHandler;
    .locals 2

    .line 353
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    .line 354
    .local v0, "handler":Landroid/animation/AnimationHandler;
    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 355
    return-object v0
.end method

.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .locals 1

    .line 350
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener$1;->initialValue()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method
