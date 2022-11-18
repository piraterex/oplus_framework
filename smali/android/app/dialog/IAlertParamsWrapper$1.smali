.class Landroid/app/dialog/IAlertParamsWrapper$1;
.super Ljava/lang/Object;
.source "IAlertParamsWrapper.java"

# interfaces
.implements Landroid/app/dialog/IAlertParamsExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/dialog/IAlertParamsWrapper;->getAlertParamsExt()Landroid/app/dialog/IAlertParamsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/dialog/IAlertParamsWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/app/dialog/IAlertParamsWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/dialog/IAlertParamsWrapper;

    .line 23
    iput-object p1, p0, Landroid/app/dialog/IAlertParamsWrapper$1;->this$0:Landroid/app/dialog/IAlertParamsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
