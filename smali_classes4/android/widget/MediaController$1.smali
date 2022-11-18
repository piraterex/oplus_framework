.class Landroid/widget/MediaController$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/MediaController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MediaController;

    .line 128
    iput-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 131
    iget-object v0, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$mregisterOnBackInvokedCallback(Landroid/widget/MediaController;)V

    .line 132
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 136
    iget-object v0, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$munregisterOnBackInvokedCallback(Landroid/widget/MediaController;)V

    .line 137
    return-void
.end method
