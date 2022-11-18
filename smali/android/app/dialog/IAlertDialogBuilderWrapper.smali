.class public interface abstract Landroid/app/dialog/IAlertDialogBuilderWrapper;
.super Ljava/lang/Object;
.source "IAlertDialogBuilderWrapper.java"


# virtual methods
.method public blacklist getAlertParamsExt(Landroid/app/AlertDialog$Builder;)Landroid/app/dialog/IAlertParamsExt;
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 25
    new-instance v0, Landroid/app/dialog/IAlertDialogBuilderWrapper$1;

    invoke-direct {v0, p0}, Landroid/app/dialog/IAlertDialogBuilderWrapper$1;-><init>(Landroid/app/dialog/IAlertDialogBuilderWrapper;)V

    return-object v0
.end method

.method public blacklist setDialogType(Landroid/app/AlertDialog$Builder;I)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "dialogType"    # I

    .line 29
    return-void
.end method

.method public blacklist setMessageNeedScroll(Landroid/app/AlertDialog$Builder;Z)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "messageNeedScroll"    # Z

    .line 35
    return-void
.end method

.method public blacklist setSummaries(Landroid/app/AlertDialog$Builder;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "items"    # [Ljava/lang/CharSequence;
    .param p3, "summaryItems"    # [Ljava/lang/CharSequence;

    .line 32
    return-void
.end method
