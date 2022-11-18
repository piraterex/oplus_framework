.class Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    .line 179
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOnMenuItemClickListener(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    if-nez v1, :cond_1

    .line 187
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmMenuItems(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Ljava/util/Map;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 190
    .local v1, "menuItem":Landroid/view/MenuItem;
    if-nez v1, :cond_2

    .line 191
    return-void

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOnMenuItemClickListener(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 194
    return-void
.end method
