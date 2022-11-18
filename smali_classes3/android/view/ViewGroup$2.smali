.class Landroid/view/ViewGroup$2;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewGroup;

    .line 4416
    iput-object p1, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 4419
    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/view/ViewGroup;->-$$Nest$mnotifyAnimationListener(Landroid/view/ViewGroup;)V

    .line 4420
    return-void
.end method
