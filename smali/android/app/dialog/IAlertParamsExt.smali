.class public interface abstract Landroid/app/dialog/IAlertParamsExt;
.super Ljava/lang/Object;
.source "IAlertParamsExt.java"


# virtual methods
.method public blacklist getConvertView(Landroid/view/View;II)Landroid/view/View;
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "count"    # I

    .line 59
    return-object p1
.end method

.method public blacklist getHookAdapter(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/widget/ListAdapter;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "items"    # [Ljava/lang/CharSequence;

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookAlertParaApply(Landroid/app/dialog/IAlertControllerExt;)V
    .locals 0
    .param p1, "alertController"    # Landroid/app/dialog/IAlertControllerExt;

    .line 41
    return-void
.end method

.method public blacklist needHookAdapter(ZZ)Z
    .locals 1
    .param p1, "isSingleChoice"    # Z
    .param p2, "isMultiChoice"    # Z

    .line 33
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setDialogType(I)V
    .locals 0
    .param p1, "dialogType"    # I

    .line 30
    return-void
.end method

.method public blacklist setItems([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .line 44
    return-void
.end method

.method public blacklist setListStyle(Landroid/widget/ListView;ZZ)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "isSingleChoice"    # Z
    .param p3, "isMultiChoice"    # Z

    .line 56
    return-void
.end method

.method public blacklist setMessageNeedScroll(Z)V
    .locals 0
    .param p1, "messageNeedScroll"    # Z

    .line 47
    return-void
.end method

.method public blacklist setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 53
    return-void
.end method

.method public blacklist setSummaries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summaryItems"    # [Ljava/lang/CharSequence;

    .line 50
    return-void
.end method
