.class Landroid/widget/PopupWindow$2;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/PopupWindow;


# direct methods
.method constructor blacklist <init>(Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/PopupWindow;

    .line 264
    iput-object p1, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 266
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 270
    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/PopupWindow;->-$$Nest$fputmIsAnchorRootAttached(Landroid/widget/PopupWindow;Z)V

    .line 271
    return-void
.end method
