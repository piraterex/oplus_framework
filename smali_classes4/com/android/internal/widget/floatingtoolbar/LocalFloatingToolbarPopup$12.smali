.class Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;
.super Landroid/widget/ArrayAdapter;
.source "LocalFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowPanel()Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I

    .line 1372
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1377
    invoke-static {}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$sfgetsLocalFloatingToolbarPopupExt()Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOpenOverflowUpwards(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookCreateOverflowPanelAtAdapterGetView(IZ)V

    .line 1379
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOverflowPanelViewHelper(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    move-result-object v0

    .line 1380
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOverflowPanelSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 1379
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->getView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
