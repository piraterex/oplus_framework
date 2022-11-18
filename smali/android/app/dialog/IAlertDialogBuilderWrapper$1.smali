.class Landroid/app/dialog/IAlertDialogBuilderWrapper$1;
.super Ljava/lang/Object;
.source "IAlertDialogBuilderWrapper.java"

# interfaces
.implements Landroid/app/dialog/IAlertParamsExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/dialog/IAlertDialogBuilderWrapper;->getAlertParamsExt(Landroid/app/AlertDialog$Builder;)Landroid/app/dialog/IAlertParamsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/dialog/IAlertDialogBuilderWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/app/dialog/IAlertDialogBuilderWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/dialog/IAlertDialogBuilderWrapper;

    .line 25
    iput-object p1, p0, Landroid/app/dialog/IAlertDialogBuilderWrapper$1;->this$0:Landroid/app/dialog/IAlertDialogBuilderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
