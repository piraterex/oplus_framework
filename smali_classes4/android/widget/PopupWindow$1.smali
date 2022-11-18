.class Landroid/widget/PopupWindow$1;
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

    .line 249
    iput-object p1, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 253
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-$$Nest$malignToAnchor(Landroid/widget/PopupWindow;)V

    .line 254
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 260
    return-void
.end method
