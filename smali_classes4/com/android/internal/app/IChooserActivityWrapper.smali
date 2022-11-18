.class public interface abstract Lcom/android/internal/app/IChooserActivityWrapper;
.super Ljava/lang/Object;
.source "IChooserActivityWrapper.java"


# virtual methods
.method public blacklist addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "b"    # Landroid/widget/Button;

    .line 32
    return-void
.end method

.method public blacklist createCopyButton()Landroid/widget/Button;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;
    .locals 1
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCreateContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hideStickyContentPreview()V
    .locals 0

    .line 26
    return-void
.end method
