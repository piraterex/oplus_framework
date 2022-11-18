.class Landroid/widget/IAbsListViewWrapper$1;
.super Ljava/lang/Object;
.source "IAbsListViewWrapper.java"

# interfaces
.implements Landroid/widget/IAbsListviewExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/IAbsListViewWrapper;->getExtImpl()Landroid/widget/IAbsListviewExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/IAbsListViewWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/widget/IAbsListViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/IAbsListViewWrapper;

    .line 5
    iput-object p1, p0, Landroid/widget/IAbsListViewWrapper$1;->this$0:Landroid/widget/IAbsListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
