.class public interface abstract Landroid/app/dialog/IAlertControllerExt;
.super Ljava/lang/Object;
.source "IAlertControllerExt.java"


# virtual methods
.method public blacklist getConvertView(Landroid/view/View;II)Landroid/view/View;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "count"    # I

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDialogType()I
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 29
    return-void
.end method

.method public blacklist isCenterDialog()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMessageNeedScroll()Z
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOplusStyle(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist selectContentView()I
    .locals 1

    .line 50
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist setDialogType(I)V
    .locals 0
    .param p1, "dialogType"    # I

    .line 43
    return-void
.end method

.method public blacklist setMessageNeedScroll(Z)V
    .locals 0
    .param p1, "messageNeedScroll"    # Z

    .line 36
    return-void
.end method

.method public blacklist setupButtons(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 62
    return-void
.end method

.method public blacklist setupContent(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 58
    return-void
.end method

.method public blacklist setupView()V
    .locals 0

    .line 54
    return-void
.end method
