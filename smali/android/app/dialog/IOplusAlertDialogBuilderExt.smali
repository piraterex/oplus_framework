.class public interface abstract Landroid/app/dialog/IOplusAlertDialogBuilderExt;
.super Ljava/lang/Object;
.source "IOplusAlertDialogBuilderExt.java"


# virtual methods
.method public blacklist getBottomBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist getCenterBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
