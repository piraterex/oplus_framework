.class Landroid/widget/Spinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Spinner$DropdownPopup;

.field final synthetic blacklist val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Spinner$DropdownPopup;

    .line 1302
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$3;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Landroid/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismiss()V
    .locals 2

    .line 1304
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$3;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1305
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1306
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1308
    :cond_0
    return-void
.end method
